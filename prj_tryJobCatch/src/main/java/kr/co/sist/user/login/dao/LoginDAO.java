package kr.co.sist.user.login.dao;


import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;

public class LoginDAO {
	private static LoginDAO lDAO;
	
	private String configPath;
	
	private LoginDAO() {
		configPath = "kr/co/sist/dao/mybatis-config.xml";
	}//TestDAO
	
	public static LoginDAO getInstance() {
		if( lDAO == null ) {
			lDAO = new LoginDAO();
		}//end if
		
		return lDAO;
	}//getInstance
	
	
	public LoginDomain selectMebmer(LoginVO loginVO) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		LoginDomain loginDomain = new LoginDomain();
		loginDomain = ss.selectOne("kr.co.sist.login.selectMember", loginVO);
		
		mbh.closeHandler(ss);
		
		return loginDomain;
	}//login
	
	

	
}//class
