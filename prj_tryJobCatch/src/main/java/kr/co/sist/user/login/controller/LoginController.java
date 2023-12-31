package kr.co.sist.user.login.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.service.LoginService;
import kr.co.sist.user.login.vo.LoginVO;

@SessionAttributes({"M_ID", "M_NAME", "login_type"})
@Controller
public class LoginController {
	
	@Autowired(required = false)
	private LoginService loginService;
	
	@GetMapping("/member/loginFrm.do")
	public String goLogin() {
		
		
		return "member/login_frm";
	}//goLogin
	
	@PostMapping("/member/login.do")
	public String login(Model model, LoginVO loginVO) {
		
		LoginDomain loginDomain = loginService.memberCheck(loginVO);
		
		String loginType = loginVO.getLogin_type();
		String errMsg = "";
		if( loginDomain == null ) {
			errMsg = "아이디 또는 비밀번호가 일치하지 않습니다.";
			model.addAttribute("errMsg", errMsg);
			
			return "member/login_frm";
		}//end if
		
		if( loginType.equals("M")) {
			if( loginDomain.getM_JOIN_CONDITION().equals("N")) {
					errMsg = "탈퇴 처리된 회원입니다.";
					model.addAttribute("errMsg", errMsg);
					
					return "member/login_frm";
			}//end if
			model.addAttribute("M_ID", loginDomain.getM_ID());
			model.addAttribute("M_NAME", loginDomain.getM_NAME());
			model.addAttribute("login_type", loginVO.getLogin_type());
		} else {
			if( loginDomain.getCM_CO_JOIN_CONDITION().equals("N") ) {
					errMsg = "탈퇴 처리된 회원입니다.";
					model.addAttribute("errMsg", errMsg);
					
					return "member/login_frm";
				}//end if
			model.addAttribute("M_ID", loginDomain.getCM_ID());
			model.addAttribute("M_NAME", loginDomain.getCM_NAME());
			model.addAttribute("login_type", loginVO.getLogin_type());
		}//end else
		
		return "forward:/main.do";
	}//login
	
	@GetMapping("/member/logout.do")
	public String logout(SessionStatus sessionStatus) {
		
		sessionStatus.setComplete();
		
		return "forward:/main.do";
	}
	
}//class
