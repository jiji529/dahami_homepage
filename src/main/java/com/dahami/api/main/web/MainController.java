package com.dahami.api.main.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.activation.CommandMap;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.activation.MailcapCommandMap;
import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hmef.Attachment;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.MediaType;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dahami.api.lgn.service.user.DebugStream;
import com.dahami.api.main.service.vo.BizVO;
import com.dahami.api.main.service.vo.BoardVO;
import com.dahami.api.main.JsonReader;
import com.dahami.api.main.service.MainService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MainController {
	
	// 인스타 데이터를 담아놓을 변수
	private static JSONArray instaArray;
	private static String instaSaveTime;
	private static final int instaRenewalTime; 
	
	static {
		instaArray = new JSONArray();
		instaSaveTime = getNowTime();
		instaRenewalTime = 1;
	}
	
	@Value("${Globals.insta.userId}")
	private String userId;
	
	@Value("${Globals.insta.accessToken}")
	private String accessToken;
	
	@Resource(name="suvService")
	private MainService mainService;
	
	@RequestMapping("index.html")
	public String indexs(ModelMap model, HttpServletRequest request) throws Exception {	
		List<BoardVO> boardCdList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		boardVO.setStPageSize(0);
		boardVO.setEndPageSize(4);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			boardCdList.get(i).setRegdate(convertDate(boardCdList.get(i).getRegdate()));
			boardCdList.get(i).setBody(boardCdList.get(i).getBody().replaceAll("\r", "<br/>"));
		}
		
		model.addAttribute("boardCdList", boardCdList);
		
		return "index";
	}
	
	@RequestMapping("/loadInstaData.html")
	public String loadInstaData(Model model) {
		JSONArray cell = new JSONArray();
		try {
			String nowTime = getNowTime();		
			if(instaArray.size()==0 || getDiffTime(nowTime, instaSaveTime)) {				
				String user_id = userId;
				String access_token = accessToken;
				String fields = "id,media_type,media_url,permalink,thumbnail_url,username,caption";
				String limit = "100";
				
				JsonReader jsonReader = new JsonReader();
				String result = jsonReader.callURL("https://graph.instagram.com/" + user_id + "/media?fields=" + fields + "&access_token=" + access_token + "&limit=" + limit + "");
				
				// JSONParser로 JSONObject로 변환
				JSONParser parser = new JSONParser();
				JSONObject jsonObject = (JSONObject) parser.parse(result);
					
				boolean diffCheck = false;
				if(instaArray.size()!=0) {
					// 첫페이지를 체크해보고 만약 저장데이터와 같다면, 다음페이지는 보지않는것으로 한다.
					List<Map<String,String>> dataList = (List<Map<String, String>>) jsonObject.get("data");
					String renewal_first = dataList.get(0).get("id");
					
					JSONObject saveJsonObject = (JSONObject) instaArray.get(0);
					List<Map<String,String>> saveDataList = (List<Map<String, String>>) saveJsonObject.get("data");
					String saved_first = saveDataList.get(0).get("id"); 
					
					if(!renewal_first.equals(saved_first)) {
						diffCheck = true;
					}
				}	
				
				if(diffCheck==true || instaArray.size()==0) {
					cell.add(jsonObject);
					
					boolean nextCheck = false;
					while(!nextCheck) {
						JSONObject paging = (JSONObject) jsonObject.get("paging");
						Object next = paging.get("next");
						if(next!=null) {
							String result2 = jsonReader.callURL(next.toString());
							
							// JSONParser로 JSONObject로 변환
							JSONParser parser2 = new JSONParser();
							jsonObject = (JSONObject) parser.parse(result2);
							cell.add(jsonObject);	   	        	
						} else {
							nextCheck = true;
						}
					}
					// 마지막으로 전역데이터 및 저장시간을 갱신해준다.
					instaArray = cell;
					instaSaveTime = nowTime;
				} else {
					// 다른게 없으면, 첫페이지만 조회해보고 그 다음페이지는 볼 필요없이 기존 데이터를 사용한다.
					// 인스타 게시글은 하루에 1개씩 올린다고 하므로, 데이터가 달라져 갱신시 전체 데이터를 가져오는 과정은 딱 1번 이루어짐
					// 그 뒤부터는 첫페이지만 계속 달라졌는지 확인하는 구조가 됨 (따라서 1시간 200번 내외에서 문제없이 돌릴 수 있음)
					cell = instaArray;
				}				
			} else {
				cell = instaArray;
			}
			
			model.addAttribute("writeXml", cell);
		} catch(Exception e) {
			e.printStackTrace();
			
			// 만약 인스타 데이터와 통신에 문제가 생길경우, 기존 서버에 저장해놨던 데이터를 사용하기로 한다.
			cell = instaArray;			
			model.addAttribute("writeXml", cell);
		}		
		return "/common/suvXmlData";			
	}
	
	@RequestMapping("/promise/promise.html")
	public String promise(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/promise/promise";
	}
	
	@RequestMapping("/execution/product.html")
	public String product(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/product";
	}
	
	@RequestMapping("/execution/product_sub/scrapmaster.html")
	public String scramaster(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/product_sub/scrapmaster";
	}
	
	@RequestMapping("/execution/product_sub/clippingon.html")
	public String clippingon(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/product_sub/clippingon";
	}
	
	@RequestMapping("/execution/product_sub/newsplaza.html")
	public String newsplaza(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/product_sub/newsplaza";
	}
	
	@RequestMapping("/execution/product_sub/expert.html")
	public String expert(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/product_sub/expert";
	}
	
	@RequestMapping("/execution/culture_sub/tpaper.html")
	public String tpaper(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/culture_sub/tpaper";
	}
	
	@RequestMapping("/execution/culture_sub/newsbank.html")
	public String newsbank(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/culture_sub/newsbank";
	}
	
	@RequestMapping("/execution/culture_sub/enie.html")
	public String enie(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/culture_sub/enie";
	}
	
	@RequestMapping("/execution/partner.html")
	public String partner(ModelMap model, HttpServletRequest request) throws Exception {
		model.addAttribute("kindList", mainService.SelectKindList());
		model.addAttribute("logoList", mainService.SelectLogoLst());
		return "/execution/partner";
	}
	
	@RequestMapping("/execution/culture.html")
	public String culture(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/execution/culture";
	}
	
	@RequestMapping("/tech/tech.html")
	public String tech(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/tech/tech";
	}
	
	@RequestMapping("/news/news.html")
	public String news(ModelMap model, HttpServletRequest request) throws Exception {	
		List<BoardVO> boardCdList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		int NoticeCnt = 0;
		int DivideCnt = 0;
		
		boardVO.setStPageSize(0);
		boardVO.setEndPageSize(10);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			String f_body = boardCdList.get(i).getBody();
			String pattern = "[\\[_](.*?)[\\_]]";
			f_body = f_body.replaceAll(pattern, "");
			boardCdList.get(i).setBody(f_body);
		}
		
		boardVO.setEndPageSize(11);
		NoticeCnt = mainService.SelectNotCnt(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			boardCdList.get(i).setRegdate(convertDate(boardCdList.get(i).getRegdate()));
			boardCdList.get(i).setBody(boardCdList.get(i).getBody().replaceAll("\r", "<br/>"));
		}
		
		model.addAttribute("boardCdList", boardCdList);
		model.addAttribute("totcnt", NoticeCnt);
		
		return "/news/news";
	}
	
	@RequestMapping("/news/loadMoreNews.html")
	public String loadMoreNews(Model model, HttpServletRequest request) throws Exception {	
		List<BoardVO> boardCdList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		String question = request.getParameter("question");
		int between = 10;
		int NoticeCnt = 0;
		int page = Integer.parseInt(request.getParameter("page").toString()) * between;
		
		boardVO.setTitle(question);
		boardVO.setStPageSize(page);
		boardVO.setEndPageSize(between);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		for(int i=0; i<boardCdList.size(); i++) {
			String f_body = boardCdList.get(i).getBody();
			String pattern = "[\\[_](.*?)[\\_]]";
			f_body = f_body.replaceAll(pattern, "");
			boardCdList.get(i).setBody(f_body);
		}
		NoticeCnt = mainService.SelectNotCnt(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			boardCdList.get(i).setRegdate(convertDate(boardCdList.get(i).getRegdate()));
			boardCdList.get(i).setBody(boardCdList.get(i).getBody().replaceAll("\r", "<br/>"));
		}
		
		JSONArray cell = new JSONArray();	
		
		for(int i=0; i<boardCdList.size(); i++) {           			// 루프를 돌려 list에 담긴 데이터를 BeanVO에 주입 
            JSONObject obj = new JSONObject();             				// 다시 한번 JSONObject로 감싸기 위해 객체 선언
            
            obj.put( "title" , boardCdList.get(i).getTitle());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "body" , boardCdList.get(i).getBody());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "file1" , boardCdList.get(i).getFile1());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "file2" , boardCdList.get(i).getFile2());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "regdate" , boardCdList.get(i).getRegdate());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "page", page);										// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "totcnt", NoticeCnt);
            
            cell.add(obj);                                 				// 아까 만들어진 cell Array객체에 VO담은 객체를 주입
        }		
		
		model.addAttribute("writeXml", cell);
		
		return "/common/suvXmlData";
	}
	
	@RequestMapping("/news/insta.html")
	public String insta(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/news/insta";
	}
	
	@RequestMapping("/company/company.html")
	public String company(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/company/company";
	}
	
	@RequestMapping("/company/recruit.html")
	public String recruit(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/company/recruit";
	}
	
	@RequestMapping("/company/faq.html")
	public String faq(ModelMap model, HttpServletRequest request) throws Exception {
		List<BoardVO> faqList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		int FaqCnt = 0;
		int DivideCnt1 = 0;
		
		boardVO.setStPageSize(0);
		boardVO.setEndPageSize(10);
		
		faqList = mainService.FaqLst(boardVO);
		
		boardVO.setEndPageSize(11);		
		FaqCnt 	  = mainService.FaqCnt(boardVO);
		
		if(!faqList.isEmpty()){
			for(int i=0; i<faqList.size(); i++) {
				faqList.get(i).setGubun(convertTitle(faqList.get(i).getQuest()));
				faqList.get(i).setQuest(convertWord(faqList.get(i).getQuest()));
			}
		}
		
		if(FaqCnt !=0){
			DivideCnt1 = DivideCnt1/10+1;
		}
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("faqcnt", FaqCnt);
		
		return "/company/faq";
	}
	
	@RequestMapping("/company/loadMoreFaq.html")
	public String loadMoreFaq(Model model, HttpServletRequest request) throws Exception {
		List<BoardVO> faqList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		String question = request.getParameter("question");
		int between = 10;
		int FaqCnt = 0;
		int page = Integer.parseInt(request.getParameter("page").toString()) * between;
		
		boardVO.setQuestion(question);
		boardVO.setStPageSize(page);
		boardVO.setEndPageSize(between);
		
		faqList = mainService.FaqLst(boardVO);
		FaqCnt  = mainService.FaqCnt(boardVO);
		
		if(!faqList.isEmpty()){
			for(int i=0; i<faqList.size(); i++) {
				faqList.get(i).setGubun(convertTitle(faqList.get(i).getQuest()));
				faqList.get(i).setQuest(convertWord(faqList.get(i).getQuest()));
			}
		}
		
		JSONArray cell = new JSONArray();
		
		for(int i=0; i<faqList.size(); i++) {           			// 루프를 돌려 list에 담긴 데이터를 BeanVO에 주입 
            JSONObject obj = new JSONObject();             				// 다시 한번 JSONObject로 감싸기 위해 객체 선언
            
            obj.put( "seq" , faqList.get(i).getSeq());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "gubun" , faqList.get(i).getGubun());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "quest" , faqList.get(i).getQuest());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "answer" , faqList.get(i).getAnswer());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "page", page);										// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "totcnt", FaqCnt);
            
            cell.add(obj);                                 				// 아까 만들어진 cell Array객체에 VO담은 객체를 주입
        }		
		
		model.addAttribute("writeXml", cell);
		
		return "/common/suvXmlData";
	}
	
	@RequestMapping("/company/qna.html")
	public String qna(ModelMap model, HttpServletRequest request) throws Exception {		
		return "/company/qna";
	}
	
	@RequestMapping("/community/sendEmail.html")
	public String sendEmail(ModelMap model, HttpServletRequest request) throws Exception {
		
		final String username = "hello@dahami.com";
		final String password = "p%gpfhdn$4174";

		String tmpName = request.getParameter("name");
		String TmpPhone = request.getParameter("phone");
		String TmpEmail = request.getParameter("email");
		String TmpTitle = request.getParameter("title");
		String TmpContents = request.getParameter("contents");
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "mail.dahami.com");
		props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props,
		    new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(TmpEmail));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("helpdesk@dahami.com"));				
			message.setSubject(TmpTitle);
			message.setText("작성자 : "+tmpName+"\n\n "+"연락처 : "+TmpPhone+"\n\n "+TmpContents);
			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		JSONArray cell = new JSONArray();
		model.addAttribute("writeXml", cell);
		
		return "/common/suvXmlData";
	}
		
	@RequestMapping("/common/popup.html")
	public String popup(ModelMap model, HttpServletRequest request) throws Exception {
		return "/common/popup";
	}
	
	public String convertDate(String dt){
		long dtlong = Long.parseLong(dt);
		Date dts = new java.util.Date(new Long(dtlong)*1000);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		
		return df.format(dts); 
	}
	
	public String convertTitle(String wd){
		
		String TmpConvert = new String();
		
		try{
			if(wd != null){
				if(wd.indexOf("]") > -1){
					TmpConvert = wd.substring(0, wd.indexOf("]")+1);
				}else{
					return "";
				}
			}
		}catch(Exception e){
			return "";
		}
		
		return TmpConvert;
	}
	
	public String convertWord(String wd){
		
		String TmpConvert = new String();
		
		try{
			if(wd != null){
				if(wd.indexOf("]") > -1){
					TmpConvert = wd.substring(wd.indexOf("]")+1, wd.length());
				}else{
					return "";
				}
			}
		}catch(Exception e){
			return "";
		}
		
		return TmpConvert;
	}
	
	public boolean fileSizeCheck(String filename) {
        if (new File(filename).length() > (1024 * 1024 * 25)) {
            return false;
        }
        return true;
    }
	
	public static String getNowTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now = new Date();
		String nowTime = sdf.format(now);
		
		return nowTime;
	}
	
	public boolean getDiffTime(String nowTime, String saveTime) throws java.text.ParseException {
		boolean timeCheck = false;
		
		Date format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(nowTime);
		Date format2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(saveTime);
        
        long diffSec = (format1.getTime() - format2.getTime()) / 1000; //초 차이    
        long diffMin = (format1.getTime() - format2.getTime()) / 60000; //분 차이
        long diffHor = (format1.getTime() - format2.getTime()) / 3600000; //시 차이
        long diffDays = diffSec / (24*60*60); //일자수 차이    
        
        if(diffMin >= instaRenewalTime) {
        	timeCheck = true;
        }
		
		return timeCheck;
	}
}