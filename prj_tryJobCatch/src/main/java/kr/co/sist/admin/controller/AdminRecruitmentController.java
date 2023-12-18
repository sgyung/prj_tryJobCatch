package kr.co.sist.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminRecruitmentController {

	@GetMapping("/recruitmentlist.do")
	public String recruitmentList() {
		return "admin/company/recruitmentlist";
	}//userList
	
	@GetMapping("/recruitmentinfo.do")
	public String recruitmentInfo() {
		return "admin/company/recruitmentinfo";
	}//userList
	
}
