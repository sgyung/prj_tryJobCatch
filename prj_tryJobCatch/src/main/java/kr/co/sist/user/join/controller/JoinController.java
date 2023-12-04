package kr.co.sist.user.join.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JoinController {
	
	@GetMapping("/member/memberJoinFrm.do")
	public String goMemberJoinFrm() {
		
		return "member/member_join_frm";
	}//goMemberJoinFrm
	
	@GetMapping("/member/companyJoinFrm.do")
	public String goCompanyJoinFrm() {
		
		return "member/company_join_frm";
	}//goMemberJoinFrm
	
	
	
}//class
