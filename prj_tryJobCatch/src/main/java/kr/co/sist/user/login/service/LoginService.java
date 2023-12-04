package kr.co.sist.user.login.service;


import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.login.dao.LoginDAO;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;

public class LoginService {
	
	public LoginDomain memberCheck(LoginVO loginVO) {
		LoginDAO loginDAO = LoginDAO.getInstance();
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		
		String hashedPw = dataEncrypt.sha256(loginVO.getM_PW());
		loginVO.setM_PW(hashedPw);
		
		LoginDomain loginDomain = loginDAO.selectMebmer(loginVO);
		
		return loginDomain;
	}//emeberCheck
	
	
}//class
