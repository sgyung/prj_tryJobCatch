package kr.co.sist.user.join.controller;

import java.security.Provider.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.join.service.JoinService;
import kr.co.sist.user.join.vo.CompanyJoinVO;
import kr.co.sist.user.join.vo.MemberJoinVO;

@Controller
@Component
public class JoinController {
	@Autowired(required = false)
	private JoinService joinService;
	
	@GetMapping("/member/memberJoinFrm.do")
	public String goMemberJoinFrm() {
		
		return "member/member_join_frm";
	}//goMemberJoinFrm
	
	@GetMapping("/member/companyJoinFrm.do")
	public String goCompanyJoinFrm() {
		
		return "member/company_join_frm";
	}//goMemberJoinFrm
	
	@PostMapping("/member/memberJoin.do")
	public String memberJoin(Model model, MemberJoinVO mbrJoinVO) {
		boolean resultFlag = joinService.memberJoin(mbrJoinVO);
		String joinResultMsg = "";
		
		if( resultFlag ) {
			joinResultMsg = "회원가입에 성공하셨습니다 로그인 해주세요.";
		} else {
			joinResultMsg = "회원가입에 실패하였습니다 다시 시도해주세요.";
		}//end else
		
		model.addAttribute("joinResultMsg", joinResultMsg);
		
		return "member/login_frm";
		
	}//memeberJoin
	
	
	@PostMapping("/member/companyJoin.do")
	public String companyJoin(Model model, CompanyJoinVO coJoinVO) {
		boolean resultFlag = joinService.companyJoin(coJoinVO);
		String joinResultMsg = "";
		if( resultFlag ) {
			joinResultMsg = "회원가입에 성공하셨습니다 로그인 해주세요.";
		} else {
			joinResultMsg = "회원가입에 실패하였습니다 다시 시도해주세요.";
		}//end else
		
		model.addAttribute("joinResultMsg", joinResultMsg);
		
		return "member/login_frm";
		
	}//companyJoin
	
	@ResponseBody
	@PostMapping("/member/mbrIdDupCheck.do")
	public String mbrIdDupCheck(Model model, String id) {
		
		return joinService.mbrIdCheck(id).toJSONString();
	}//idDupCheck
	
	@ResponseBody
	@PostMapping("/member/coIdDupCheck.do")
	public String coIdDupCheck(Model model, String id) {
		
		return joinService.coIdCheck(id).toJSONString();
	}//idDupCheck
	
}//class
