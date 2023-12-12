package kr.co.sist.user.mypage.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.sist.user.mypage.domain.MemberDomain;
import kr.co.sist.user.mypage.service.ModifyService;
import kr.co.sist.user.mypage.vo.MemberInfoVO;
import kr.co.sist.user.mypage.vo.ModifyPassVO;

@Controller
public class ModifyController {
	
	@Autowired(required = false)
	private ModifyService modifyService;
	
	
	@GetMapping("/member/mbrModifyFrm.do")
	public String mbrModifyInfoFrm(HttpSession session, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		
		MemberDomain mbrDomain = new MemberDomain();
		mbrDomain = modifyService.modifyInfoFrm(m_id);
		model.addAttribute("mbrDomain", mbrDomain);
		
		return "member/mbr_modify_info_frm";
	}//mbrModifyInfoFrm
	
	@GetMapping("/member/passModifyFrm.do")
	public String mbrModifyPassFrm() {
		
		return "member/mbr_modify_pass_frm";	
	}//mbrModifyPassFrm
	
	@PostMapping("/member/mbrModifyInfo.do")
	public String mbrModifyInfo(Model model, HttpSession session, MemberInfoVO mbrInfoVO) {
		String m_id = (String)session.getAttribute("M_ID");
		mbrInfoVO.setM_ID(m_id);
		String msg = modifyService.modifyMbrInfo(mbrInfoVO);
		
		model.addAttribute("msg", msg);
		
		return "forward:/member/mypageHome.do";
	}//mbrModifyInfo
	
	@PostMapping("/member/mbrModifyPass.do")
	public String mbrModifyPass(HttpSession session, Model model, ModifyPassVO modifyPassVO) {
		String m_id = (String)session.getAttribute("M_ID");
		modifyPassVO.setM_ID(m_id);
		boolean resultFlag = modifyService.modifyMbrPass(modifyPassVO);
		if( resultFlag ) {
			model.addAttribute("msg", "비밀번호가 수정되었습니다.");
			return "forward:/member/mypageHome.do";
		} else {
			model.addAttribute("msg", "입력한 비밀번호와 현재비밀번호가 일치하지 않습니다.");
			return "member/mbr_modify_pass_frm";
		}//end else
		
	}//mbrModifyPass
	
}//class
