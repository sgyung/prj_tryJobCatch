package kr.co.sist.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.NoticeDomain;
import kr.co.sist.admin.service.AdminNoticeService;
import kr.co.sist.admin.vo.NoticeInsertVO;

@Controller
public class AdminNoticeController {

	@Autowired
	private AdminNoticeService ns;
	
	@RequestMapping(value="/noticelist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeList(Model model) {
		List<NoticeDomain> noticeList = ns.printAllNotice();
		
		System.out.println(noticeList);
		model.addAttribute("noticeList",noticeList);
		
		return "admin/board/noticelist";
	}//noticeList
	
	@RequestMapping(value="/noticeinfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeInfo(Model model, String n_id) {
		NoticeDomain noticeInfo = ns.printNotice(n_id);
		
		model.addAttribute("noticeInfo",noticeInfo);
		
		return "admin/board/noticeinfo";
	}//noticeInfo
	
	@RequestMapping(value="/notice_add.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeAdd(NoticeInsertVO niVO) {
		
		ns.insertNotice(niVO);
		
		return "admin/board/noticeadd";
	}//noticeAdd
	
	@RequestMapping(value="/notice_delete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeDelete(String n_id) {
		
		ns.deleteNotice(n_id);
		
		return "forward:/noticelist.do";
	}//noticeAdd
	
	@RequestMapping(value="/notice_modify_frm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goModify(Model model, String n_id) {
		NoticeDomain noticeInfo = ns.printNotice(n_id);
		
		model.addAttribute("noticeInfo",noticeInfo);
		
		return "admin/board/notice_modify";
	}//noticeInfo
	
	@RequestMapping(value="/notice_modify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeModify(NoticeDomain nd) {
		
		ns.modifyNotice(nd);
		
		return "forward:/noticelist.do";
	}//noticeAdd
	
}
