package kr.co.sist.user.login.dao;


import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;

@Component
public class LoginDAO {
	
	public LoginDomain selectMebmer(LoginVO loginVO) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		LoginDomain loginDomain = new LoginDomain();
		loginDomain = ss.selectOne("kr.co.sist.login.selectMember", loginVO);
		
		mbh.closeHandler(ss);
		
		return loginDomain;
	}//login
	
	

	
}//class
