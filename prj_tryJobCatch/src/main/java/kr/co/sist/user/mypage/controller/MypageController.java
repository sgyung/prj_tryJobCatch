package kr.co.sist.user.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.mypage.domain.MemberProfileDomain;
import kr.co.sist.user.mypage.service.MypageService;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
@Controller
public class MypageController {
	
	@Autowired(required = false)
	private MypageService mypageService;
	
	@RequestMapping(value="/member/mypageHome.do", method={GET, POST})
	public String myPageHome(HttpSession session, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		
		int resumeCnt = mypageService.getResumeCnt(m_id);
		int applyCnt = mypageService.getApplyCnt(m_id);
		int reviewCnt = mypageService.getReviewCnt(m_id);
		int inquireCnt = mypageService.getInquireCnt(m_id);
		MemberProfileDomain mbrProfile = mypageService.getProfile(m_id);
		
		model.addAttribute("resumeCnt", resumeCnt);
		model.addAttribute("applyCnt", applyCnt);
		model.addAttribute("reviewCnt", reviewCnt);
		model.addAttribute("inquireCnt", inquireCnt);
		model.addAttribute("mbrProfile", mbrProfile);
		
		return "member/mbr_mypage_home";
	}//myPageHome
	
	
}//class
