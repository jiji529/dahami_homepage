package com.dahami.api.main.web;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		BoardVO boardVO = new BoardVO();
		
		int NoticeCnt = 0;
		int DivideCnt = 0;
		
		boardVO.setStPageSize(1);
		boardVO.setEndPageSize(10);
		
		boardCdList = mainService.SelectNotLst(boardVO);
		NoticeCnt = mainService.SelectNotCnt(boardVO);
		
		for(int i=0; i<boardCdList.size(); i++) {
			boardCdList.get(i).setRegdate(convertDate(boardCdList.get(i).getRegdate()));
		}
		
		if(NoticeCnt !=0){
			DivideCnt = NoticeCnt/10+1;
		}
		
		model.addAttribute("boardCdList", boardCdList);
		model.addAttribute("totcnt", DivideCnt);
		
		return "/community/community";
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
				InternetAddress.parse("elecs9@dahami.com"));
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
            obj.put( "file" , boardCdList.get(i).getFile1());    		// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "regdate" , convertDate(boardCdList.get(i).getRegdate()));    	// obj에 객체의 데이터를 꺼내 차례로 담는다
            obj.put( "totPage" , DivideCnt);    	// obj에 객체의 데이터를 꺼내 차례로 담는다
            
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
}