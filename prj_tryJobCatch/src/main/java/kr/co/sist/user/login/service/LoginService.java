package kr.co.sist.user.login.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.login.dao.LoginDAO;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;

@Component
public class LoginService {
	
	@Autowired(required = false)
	private LoginDAO lDAO;
	
	public LoginDomain memberCheck(LoginVO loginVO) {
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		
		String hashedPw = dataEncrypt.sha256(loginVO.getM_PW());
		loginVO.setM_PW(hashedPw);
		
		LoginDomain loginDomain = lDAO.selectMebmer(loginVO);
		
		return loginDomain;
	}//emeberCheck
	
	
}//class
