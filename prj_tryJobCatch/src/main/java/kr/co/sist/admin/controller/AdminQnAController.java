package kr.co.sist.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminQnAController {

	@GetMapping("/qnalist.do")
	public String qnaList() {
		return "admin/board/qnalist";
	}//noticeList
	
	@GetMapping("/qnainfo.do")
	public String qnaInfo() {
		return "admin/board/qnainfo";
	}//noticeInfo
	
	@GetMapping("/qnainfo_reply.do")
	public String qnaInfoReply() {
		return "admin/board/qnainfo_reply";
	}//noticeInfo
	
	
}
