package com.dahami.api.lgn.web;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dahami.api.lgn.service.LgnService;
import com.dahami.api.lgn.service.vo.MemberVO;
import com.dahami.api.lgn.service.user.DebugStream;

@Controller
public class LgnController {
	
	
	@Resource(name="lgnService")
	private LgnService lgnService;

	@RequestMapping("/lgn/login.html")	
	public String loginHome() {
		DebugStream.activate();
		return "/lgn/login";
	}
	
	@RequestMapping("/lgn/loginfailed.html")
	public String loginError(ModelMap model) {
		
		model.addAttribute("error", "true");
		return "/lgn/login";
	}
	
	@RequestMapping("/lgn/logout")
	public String logout() {
		return "/lgn/login";
	}
	
	
	@RequestMapping("/lgn/loginSuccess.html")
	public String loginSuccess(ModelMap model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();		
		
		// member_id int를 session에 넣어보고 이를 사용하자.
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();		
		String membrId = user.getUsername();
		System.out.println("membrId : "+membrId);
		MemberVO memberVO = new MemberVO();
		memberVO.setMembrId(membrId);
		memberVO = lgnService.lgnSelectmembrcdMembr(memberVO);
		session.setAttribute("memberVO", memberVO);
		
		return "/lgn/groupingType";
    	//return "redirect:" + "/lgn/groupingType.html";
	}
	
	@RequestMapping("/lgn/groupingType.html")
	public String loginSurvey(ModelMap model, HttpServletRequest request) throws Exception {
		return "/lgn/groupingType";
    	//return "redirect:" + "/lgn/groupingType.html";
	}
	
}
