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
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.service.CompanyService;
import kr.co.sist.admin.service.UserService;

@Controller
public class CompanyController {

	@Autowired
	private CompanyService cs;
	
	@RequestMapping(value="/companylist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyList(Model model) {
		List<CompanyDomain> companyList = cs.printAllCompany();
		
		model.addAttribute("companyList",companyList);
		
		return "admin/company/companylist";
	}
	
	@RequestMapping(value="/companyinfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyInfo(Model model, String cm_id) {
		
		CompanyDomain companyInfo = cs.printCompany(cm_id);
		
		model.addAttribute("companyInfo",companyInfo);
		
		return "admin/company/companyinfo";
	}
	
	@RequestMapping(value="/company_withdraw.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyWithdraw(String cm_id) {
		
		cs.withdrawCompany(cm_id);
		
		return "forward:companylist.do";
	}
	
	
}
