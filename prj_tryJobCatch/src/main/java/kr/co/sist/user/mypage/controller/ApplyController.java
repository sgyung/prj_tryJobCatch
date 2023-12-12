package kr.co.sist.user.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.user.mypage.domain.ApplyDomain;
import kr.co.sist.user.mypage.service.ApplyService;

@Controller
public class ApplyController {
	
	@Autowired
	private ApplyService applyService; 
	
	@GetMapping("/member/applyList.do")
	public String applyList(HttpSession session, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		List<ApplyDomain> applyList = applyService.applyList(m_id);
		
		model.addAttribute("applyList", applyList);
		
		return "member/mbr_apply_list";
	}
	
	@GetMapping("/member/cancelApply.do")
	public String cancelApply(@RequestParam(value="app_id") String app_id, Model model){
		boolean resultFlag = applyService.cancelApply(app_id);
		
		if(resultFlag) {
			model.addAttribute("msg", "지원 취소되었습니다.");
		} else {
			model.addAttribute("msg", "지원 취소에 실패하였습니다.");
		}//end else
		
		return "forward:/member/applyList.do";
	}
	
	
}//ApplyController
