package kr.co.sist.user.company.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;
import kr.co.sist.user.company.service.CoMypageService;

@Controller
public class CoMypageController {

	@Autowired
	private CoMypageService coMypageService;
	
	@GetMapping("/company/coMyPageHome.do")
	public String coMyPageHome(HttpSession session, Model model) {
		String cm_id = (String)session.getAttribute("M_ID");
		
		int recruitmentCnt = coMypageService.getMyRecruitmentCnt(cm_id);
		int applyCnt = coMypageService.getAllApplyCnt(cm_id);
		CoLatestRecruitDomain latestRecruitment = coMypageService.getLatestRecruitment(cm_id);
		CoProfileDomain coProfile = coMypageService.getCoProfile(cm_id);
		
		model.addAttribute("recruitmentCnt",recruitmentCnt);
		model.addAttribute("applyCnt",applyCnt);
		model.addAttribute("latestRecruitment",latestRecruitment);
		model.addAttribute("coProfile",coProfile);
		
		return "company/co_mypage_home";
	}
	
	
}

