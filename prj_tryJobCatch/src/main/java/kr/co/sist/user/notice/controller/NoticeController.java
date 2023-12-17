package kr.co.sist.user.notice.controller;

import java.text.SimpleDateFormat;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.notice.domain.NoticeDomain;
import kr.co.sist.user.notice.service.NoticeListProcess;
import kr.co.sist.user.notice.service.NoticeService;
import kr.co.sist.user.notice.vo.PageVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService ns;
	
	@Autowired
	private NoticeListProcess nlp;
	
	@GetMapping("/noticeList.do")
	public String noticeList() {
		
		return "user_notice_list";
	}
	
	@ResponseBody
	@GetMapping("/noticeList_process.do")
	public String noticeListProcess(PageVO pVO) {
		int totalCount = 0;
		int pageScale = 0;
		int currentPage = 0;
		int totalPage = 0;
		int startNum = 0;
		int endNum = 0;
		int pageNumber = 0;
		int startPage = 0;
		int endPage = 0;
		
		
		totalCount = ns.totalCount(pVO);
		pageScale = ns.pageScale();
		currentPage = ns.currentPage(pVO);
		totalPage = ns.totalPage(totalCount, pageScale);
		startNum = ns.startNum(currentPage, pageScale);
		endNum = ns.endNum(startNum, pageScale);
		pageNumber = ns.pageNumber();
		startPage = ns.startPage(currentPage, pageNumber);
		endPage = ns.endPage(startPage, pageNumber, totalPage);
		
		pVO.setTotalPage(totalPage);
		pVO.setStartNum(startNum);
		pVO.setEndNum(endNum);
		pVO.setPageNumber(pageNumber);
		pVO.setEndPage(endPage);
		pVO.setStartPage(startPage);
		
		JSONObject json = nlp.recuitmentList(pVO);
		
		return json.toJSONString();
	}
	
	@GetMapping("/noticeDetail.do")
	public String noticeDetail(@RequestParam("n_id") String n_id, Model model) {
		
		NoticeDomain nd = ns.NoticeDetail(n_id);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		model.addAttribute("n_id",nd.getN_id());
		model.addAttribute("n_title",nd.getN_title());
		model.addAttribute("n_date",nd.getN_date());
		model.addAttribute("n_content",nd.getN_content());
		
		return "user_notice_detail";
	}
	
}
