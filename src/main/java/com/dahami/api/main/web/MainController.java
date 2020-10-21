package com.dahami.api.main.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
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
import org.springframework.http.MediaType;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
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
import com.dahami.api.main.service.MainService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MainController {
	
	
	@Resource(name="suvService")
	private MainService mainService;
	
	@RequestMapping("index.html")
	public String indexs(ModelMap model, HttpServletRequest request) throws Exception {		
		return "index";
	}
	
	@RequestMapping("/community/community.html")
	public String community(ModelMap model, HttpServletRequest request) throws Exception {
		List<BoardVO> boardCdList = new ArrayList<BoardVO>();
		List<BoardVO> faqList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		int NoticeCnt = 0;
		int FaqCnt = 0;
		int DivideCnt = 0;
		int DivideCnt1 = 0;
		
		boardVO.setStPageSize(0);
		boardVO.setEndPageSize(10);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		faqList = mainService.FaqLst(boardVO);
		
		boardVO.setEndPageSize(11);
		NoticeCnt = mainService.SelectNotCnt(boardVO);
		FaqCnt 	  = mainService.FaqCnt(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			boardCdList.get(i).setRegdate(convertDate(boardCdList.get(i).getRegdate()));
			boardCdList.get(i).setBody(boardCdList.get(i).getBody().replaceAll("\r", "<br/>"));
		}
		
		if(!faqList.isEmpty()){
			for(int i=0; i<faqList.size(); i++) {
				faqList.get(i).setGubun(convertTitle(faqList.get(i).getQuest()));
				faqList.get(i).setQuest(convertWord(faqList.get(i).getQuest()));
			}
		}
		
		if(NoticeCnt !=0){
			DivideCnt = NoticeCnt/10+1;
		}
		
		if(FaqCnt !=0){
			DivideCnt1 = DivideCnt1/10+1;
		}
		
		model.addAttribute("boardCdList", boardCdList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("totcnt", DivideCnt);
		model.addAttribute("faqcnt", DivideCnt1);
		
		return "/community/community";
	}
	
	@RequestMapping("/common/popup.html")
	public String popup(ModelMap model, HttpServletRequest request) throws Exception {
		return "/common/popup";
	}
	
	@RequestMapping("/company/company.html")
	public String company(ModelMap model, HttpServletRequest request) throws Exception {
		return "/company/company";
	}
		
	@RequestMapping("/main/main.html")
	public String main(ModelMap model, HttpServletRequest request) throws Exception {
		return "/main/main";
	}
	
	@RequestMapping("/recruit/recruit.html")
	public String recuit(ModelMap model, HttpServletRequest request) throws Exception {
		return "/recruit/recruit";
	}
	
	@RequestMapping("/service/scrapmaster.html")
	public String service1(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/scrapmaster";
	}
	
	@RequestMapping("/service/clipping.html")
	public String clipping(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/clipping";
	}
	
	@RequestMapping("/service/tpaper.html")
	public String tpaper(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/tpaper";
	}
	
	@RequestMapping("/service/newsbank.html")
	public String newsbank(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/newsbank";
	}
	
	@RequestMapping("/service/enie.html")
	public String enie(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/enie";
	}
	
	@RequestMapping("/service/newsplaza.html")
	public String newsplaza(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/newsplaza";
	}
	
	@RequestMapping("/service/webapp.html")
	public String webapp(ModelMap model, HttpServletRequest request) throws Exception {
		return "/service/webapp";
	}
	
	@RequestMapping("/community/comLst.html")
	public String comLst(ModelMap model, HttpServletRequest request) throws Exception {
		return "/main/suvXmlData";
	}
	
	@RequestMapping("/job/jobLst.html")
	public String jobLst(ModelMap model, HttpServletRequest request) throws Exception {
		return "/job/recuit-job";
	}
	@RequestMapping("/job/jobview.html")
	public String jobDetail(ModelMap model, HttpServletRequest request) throws Exception {
		return "/job/recuitDetail";
	}
	@RequestMapping("/job/jobview1.html")
	public String jobDetail1(ModelMap model, HttpServletRequest request) throws Exception {
		return "/job/recuitDetail1";
	}
	@RequestMapping("/job/jobview2.html")
	public String jobDetail2(ModelMap model, HttpServletRequest request) throws Exception {
		return "/job/recuitDetail2";
	}
	@RequestMapping("/job/jobmail.html")
	public String jobMail(ModelMap model, HttpServletRequest request) throws Exception {
		return "/job/recuitMail";
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
		
		return "/community/suvXmlData";
	}
	
	
	@RequestMapping(value = "/job/sendEmail.html", method = RequestMethod.POST)
	public String file_upload_save(ModelMap model, MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
		final String username = "hello@dahami.com";
		final String password = "p%gpfhdn$4174";
		
		Attachment attachment=new Attachment();
		MultipartFile multipartFile = null;
		
        Iterator<String> itr=request.getFileNames();
        MultipartFile mfile=request.getFile(itr.next());
        
        //String serverPath = "C:/eGovFrameDev-3.5.1-64bit/workspace/homepage/src/main/webapp/upload/";
        String serverPath = "/usr/local/apache-tomcat-7.0.73/webapps/ROOT/upload/";
        
        File serverFile = new File(serverPath,mfile.getOriginalFilename());
        BufferedOutputStream stream = new BufferedOutputStream(
              new FileOutputStream(serverFile));
        stream.write(mfile.getBytes());
        stream.close();
        
        String tmpName = request.getParameter("reName");
		String TmpPhone = request.getParameter("rePhone");
		String TmpEmail = request.getParameter("reEmail");
		String TmpTitle = request.getParameter("reTitle");

		
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
					//InternetAddress.parse("elecs9@dahami.com"));
					InternetAddress.parse("recruit@dahami.com"));
			message.setSubject(TmpTitle);
			
			// 파일 첨부 시작
			Multipart mp = new MimeMultipart();
	        MimeBodyPart mbp1 = new MimeBodyPart();
	        mbp1.setText("작성자 : "+tmpName+"\n\n "+"연락처 : "+TmpPhone);
	        mp.addBodyPart(mbp1);
	 
	        String filename = serverPath+mfile.getOriginalFilename();
	        
	        
	        if(filename != null){
	            if(fileSizeCheck(filename)){
	                MimeBodyPart mbp2 = new MimeBodyPart();
	                FileDataSource fds = new FileDataSource(filename);
	                mbp2.setDataHandler(new DataHandler(fds));
	                mbp2.setFileName(MimeUtility.encodeText(fds.getName(), "UTF-8", "B"));
	             
	                mp.addBodyPart(mbp2);
	            }else{
	                throw new Exception("file size overflow !");
	            }
	        }
	         
	        MailcapCommandMap mc = (MailcapCommandMap) CommandMap.getDefaultCommandMap();
	        mc.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html");
	        mc.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml");
	        mc.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain");
	        mc.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed");
	        mc.addMailcap("message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822");
	        CommandMap.setDefaultCommandMap(mc);
	         
	        message.setContent(mp);
			// 파일 첨부 끝
	        
	        Transport.send(message);
			System.out.println("Done");
			

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
		serverFile.delete();
		
		JSONArray cell = new JSONArray();
		model.addAttribute("writeXml", cell);
		
		return "/community/suvXmlData";
	}
	
	@RequestMapping("/community/boardLst.html")
	public String boardLst(ModelMap model, HttpServletRequest request) throws Exception {
		
		int StrPg = 0;
		List<BoardVO> boardCdList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		int NoticeCnt = 0;
		int DivideCnt = 0;
		
		String TmpPage = request.getParameter("pages");
		String TmpKeyword = request.getParameter("keyword");
		
		StrPg = (Integer.parseInt(TmpPage)-1)*10;
		
		boardVO.setStPageSize(StrPg);
		boardVO.setEndPageSize(10);
		boardVO.setTitle(TmpKeyword);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		NoticeCnt = mainService.SelectNotCnt(boardVO);
		
		if(NoticeCnt !=0){
			DivideCnt = NoticeCnt/10+1;
		}
		
		JSONArray cell = new JSONArray();
		
		
		for(int i=0; i<boardCdList.size(); i++) {           			// 루프를 돌려 list에 담긴 데이터를 BeanVO에 주입 
            JSONObject obj = new JSONObject();             				// 다시 한번 JSONObject로 감싸기 위해 객체 선언
            
            obj.put( "uid" , boardCdList.get(i).getUid());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "gid" , boardCdList.get(i).getGid());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "hit" , boardCdList.get(i).getHit());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "title" , boardCdList.get(i).getTitle());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "body" , boardCdList.get(i).getBody().replaceAll("\r", "<br/>"));    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "state" , boardCdList.get(i).getState());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "file1" , boardCdList.get(i).getFile1());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "file2" , boardCdList.get(i).getFile2());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "regdate" , convertDate(boardCdList.get(i).getRegdate()));    	// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "totPage" , DivideCnt);    	// obj에 객체의 데이터를 꺼내 차례로 담는다
            
            cell.add(obj);                                 				// 아까 만들어진 cell Array객체에 VO담은 객체를 주입
        }
		
		
		model.addAttribute("writeXml", cell);
		
		return "/community/suvXmlData";
	}
	
	@RequestMapping("/community/qnaLst.html")
	public String qnaLst(ModelMap model, HttpServletRequest request) throws Exception {
		
		int StrPg = 0;
		List<BoardVO> faqList = new ArrayList<BoardVO>();
		BoardVO boardVO = new BoardVO();
		
		int FaqCnt = 0;
		int DivideCnt = 0;
		
		String TmpPage = request.getParameter("pages");
		String TmpKeyword = request.getParameter("keyword");
		
		StrPg = (Integer.parseInt(TmpPage)-1)*10;
		
		boardVO.setStPageSize(StrPg);
		boardVO.setEndPageSize(11);
		boardVO.setQuestion(TmpKeyword);
		
		faqList = mainService.FaqLst(boardVO);
		FaqCnt 	  = mainService.FaqCnt(boardVO);
		
		if(FaqCnt !=0){
			DivideCnt = FaqCnt/10+1;
		}
		
		JSONArray cell = new JSONArray();
		
		
		for(int i=0; i<faqList.size(); i++) {           			// 루프를 돌려 list에 담긴 데이터를 BeanVO에 주입 
            JSONObject obj = new JSONObject();             			// 다시 한번 JSONObject로 감싸기 위해 객체 선언
            
            obj.put( "seq" , faqList.get(i).getSeq());    			// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "gubun" , convertTitle(faqList.get(i).getQuest()));    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "quest" , convertWord(faqList.get(i).getQuest()));    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "answer" , faqList.get(i).getAnswer());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "totPage" , DivideCnt);    					// obj에 객체의 데이터를 꺼내 차례로 담는다
            
            cell.add(obj);                                 				// 아까 만들어진 cell Array객체에 VO담은 객체를 주입
        }
		
		
		model.addAttribute("writeXml", cell);
		
		return "/community/suvXmlData";
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
}