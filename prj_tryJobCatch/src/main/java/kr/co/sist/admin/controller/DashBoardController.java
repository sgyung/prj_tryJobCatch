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
import kr.co.sist.admin.domain.QnADomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.service.DashBoardService;

@Controller
public class DashBoardController {

	@Autowired
	private DashBoardService ds;
	
	@RequestMapping(value="/dashboard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String dashboard(Model model) {
		
		 List<NoticeDomain> noticeList = ds.printNewNotice(); 
		 List<QnADomain> qnaList = ds.printNewQnA();
		 List<UserDomain> userList = ds.printNewUser();
		 List<CompanyDomain> companyList = ds.printNewCompany();
		 
		 model.addAttribute("noticeList",noticeList);
		 model.addAttribute("qnaList",qnaList);
		 model.addAttribute("userList",userList);
		 model.addAttribute("companyList",companyList);
		 
		
		return "admin/dashboard/dashboard";
	}//dashboard
	
}
