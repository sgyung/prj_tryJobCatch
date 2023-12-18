package kr.co.sist.admin.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.admin.vo.LoginVO;
import kr.co.sist.dao.MyBatisHandler;

public class LoginDAO {
	private static LoginDAO lDAO;
	
	//private String configPath;
	
	public LoginDAO() {
		//configPath = "kr/co/sist/dao/mybatis-config.xml";
	}
	
	public static LoginDAO getInstance() {
		if(lDAO == null) {
			lDAO = new LoginDAO();
		}
		return lDAO;
			
	}
	
	public String selectAdmin(LoginVO loginVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String result = ss.selectOne("admin.login.loginCheck",loginVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}
	
}
