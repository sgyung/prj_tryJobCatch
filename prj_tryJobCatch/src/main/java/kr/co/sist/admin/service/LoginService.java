package kr.co.sist.admin.service;

import javax.servlet.http.HttpSession;

import kr.co.sist.admin.dao.LoginDAO;
import kr.co.sist.admin.vo.LoginVO;

public class LoginService {
	
	
	public String adminCheck(LoginVO loginVO) {
		LoginDAO ldao = LoginDAO.getInstance();
		
		String adminId = ldao.selectAdmin(loginVO);
		
		return adminId;
	}
	
}
