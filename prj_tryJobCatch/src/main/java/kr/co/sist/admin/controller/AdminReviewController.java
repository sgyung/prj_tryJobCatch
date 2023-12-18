package kr.co.sist.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminReviewController {

	@GetMapping("/reviewlist.do")
	public String reviewList() {
		return "admin/company/reviewlist";
	}//reviewList
	
	@GetMapping("/reviewinfo.do")
	public String reviewInfo() {
		return "admin/company/reviewinfo";
	}//reviewinfo
	
}
