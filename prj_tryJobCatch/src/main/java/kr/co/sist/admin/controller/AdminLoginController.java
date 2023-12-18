package kr.co.sist.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.sist.admin.service.LoginService;
import kr.co.sist.admin.vo.LoginVO;

@SessionAttributes("adminId")
@Controller
public class AdminLoginController {
	
	//로그인 화면
	@GetMapping("login.do")
	public String loginFrm() {
		return "admin/login/login";
	}//requestPost2
	
	//로그인 처리
	@PostMapping("loginCheck.do")
	public String loginCheck(LoginVO loginVO, Model model) {
		LoginService lService = new LoginService();
		String adminId = lService.adminCheck(loginVO);
		
		if( adminId != null ) { //로그인 성공
			model.addAttribute("adminId",adminId);
			return "admin/dashboard/dashboard";
		} else {
			model.addAttribute("msg","로그인실패");
			return "admin/login/login";
		}
	}
	
	//로그아웃 처리
	@GetMapping("logout.do")
	public String logout(SessionStatus ss) {
		ss.setComplete();
		
		return "admin/login/login";
	}
	
}
