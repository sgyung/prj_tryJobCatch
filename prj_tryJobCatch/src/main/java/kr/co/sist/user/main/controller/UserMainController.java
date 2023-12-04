package kr.co.sist.user.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserMainController {
	
	@GetMapping("/main.do")
	public String goMain() {
		
		return "main";
	}//String
	
	
	
	
}//class
