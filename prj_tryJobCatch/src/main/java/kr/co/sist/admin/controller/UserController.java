package kr.co.sist.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.service.UserService;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;

@Controller
public class UserController {

	@RequestMapping(value="userlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userList(Model model) {
		UserService uService = new UserService();
		List<UserDomain> userList = uService.printAllUser();
		
		model.addAttribute("userList",userList);
		return "admin/user/userlist";
		
	}//userList
	
	@RequestMapping(value="userinfo.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userInfo(Model model, String m_id) {
		UserService uService = new UserService();
		UserDomain userInfo = uService.printUser(m_id);
		
		model.addAttribute("userInfo",userInfo);
		return "admin/user/userinfo";
	}//userList
	
	@RequestMapping(value="withdraw.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userWithdraw(String m_id) {
		UserService uService = new UserService();
		
		uService.withdrawUser(m_id);
		
		return "forward:userlist.do";
	}
	
	@RequestMapping(value="modify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String userModify(UserModifyVO umVO) {
		UserService uService = new UserService();
		
		uService.modifyUser(umVO);
		
		return "forward:userinfo.do";
	}
	
}
