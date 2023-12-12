package kr.co.sist.user.search.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.search.domain.SearchIdDomain;
import kr.co.sist.user.login.service.LoginService;
import kr.co.sist.user.search.service.SearchService;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.search.vo.NewPassVO;
import kr.co.sist.user.search.vo.SearchIdVO;
import kr.co.sist.user.search.vo.SearchPassVO;

@Controller
public class UserSearchController {
	
	@Autowired(required = false)
	private SearchService searchService;
	
	@GetMapping("/member/searchIdFrm.do")
	public String goSearchId() {
		
		return "member/search_id_frm";
	}//goSearchId
	
	@GetMapping("/member/searchPassFrm.do")
	public String goSearchPass() {
		
		return "member/search_pass_frm";
	}//goSearchPass
	
	
	@PostMapping("/member/searchId.do")
	public String searchId(Model model, SearchIdVO searchIdVO) {
		
		SearchIdDomain userIdDomain = searchService.searchUser(searchIdVO);
		
		
		if( userIdDomain == null ) {
			model.addAttribute("errMsg", "일치하는 회원정보가 없습니다.");
			return "member/search_id_frm";
		}//end if
		
		if(searchIdVO.getSearchType().equals("M")) {
			model.addAttribute("M_ID", userIdDomain.getM_ID());
			model.addAttribute("joinDate", userIdDomain.getM_REGISTRATION_DATE());
		} else {
			model.addAttribute("M_ID", userIdDomain.getCM_ID());
			model.addAttribute("joinDate", userIdDomain.getCM_CO_REGISTRATION_DATE());
		}//end else
		
		return "member/search_id_complete";
	}//searchId
	
	@PostMapping("/member/searchPass.do")
	public String searchPass(Model model, SearchPassVO searchPassVO ) {
		
		String M_ID = searchService.searchIsUser(searchPassVO);
		
		if(M_ID == null ) {
			model.addAttribute("errMsg", "일치하는 회원정보가 없습니다.");
			return "member/search_pass_frm";
		}//end if
		
		model.addAttribute("M_ID", M_ID);
		model.addAttribute("searchType", searchPassVO.getSearchType());
		return "member/search_new_pass";
	}//searchPass
	
	@PostMapping("/member/resetPass.do")
	public String resetPass(Model model, NewPassVO newPassVO) {
		boolean resultFlag = searchService.resetPass(newPassVO);
		
		if(!resultFlag) {
			model.addAttribute("errMsg", "새로운 비밀번호를 설정하는데 실패하였습니다 다시 시도해주세요.");
			return "member/search_pass_frm";
		}//end if
		
		return "member/reset_pass_complete";
	}//resetPass
	
}//class
