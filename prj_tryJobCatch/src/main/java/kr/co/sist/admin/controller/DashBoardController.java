package kr.co.sist.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DashBoardController {

	@GetMapping("/dashboard.do")
	public String dashboard() {
		return "admin/dashboard/dashboard";
	}//dashboard
	
}
