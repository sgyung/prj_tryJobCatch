package kr.co.sist.user.main.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.user.main.domain.MainDomain;
import kr.co.sist.user.main.domain.MainNoticeDomain;
import kr.co.sist.user.main.service.MainService;

@SessionAttributes("noticeList")
@Controller
public class UserMainController {
	
	@GetMapping("/main.do")
	public String goMain(Model model) {
		
		MainService ms = MainService.getInstance();
		
		List<MainDomain> recruitmentList = ms.recruitmentList();
		List<MainDomain> bannerList = ms.recruitmentBanner();
		List<MainNoticeDomain> noticeList = ms.noticeList();
		
		model.addAttribute("recruitmentList",recruitmentList);
		model.addAttribute("bannerList",bannerList);
		model.addAttribute("noticeList",noticeList);
		
		return "main";
	}//String
	
	
	
	
}//class
