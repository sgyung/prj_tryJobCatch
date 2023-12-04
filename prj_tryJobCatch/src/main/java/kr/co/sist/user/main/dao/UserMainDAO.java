package kr.co.sist.user.main.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.main.domain.MainDomain;
import kr.co.sist.user.main.domain.MainNoticeDomain;

public class UserMainDAO {
	private static UserMainDAO umDAO;
	
	private String configPath;
	
	private UserMainDAO() {
		configPath="kr/co/sist/dao/mybatis-config.xml";
	}
	
	public static UserMainDAO getInstance() {
		if(umDAO == null) {
			umDAO = new UserMainDAO();
		}
		return umDAO;
	}
	
	public List<MainDomain> selectAllRecruitment() throws PersistenceException{
		List<MainDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		list = ss.selectList("kr.co.sist.user.main.selectAllRecruitment");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<MainNoticeDomain> selectAllNotice() throws PersistenceException{
		List<MainNoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		list = ss.selectList("kr.co.sist.user.main.selectAllNotice");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<MainNoticeDomain> selectRecruitmentBanner() throws PersistenceException{
		List<MainNoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		list = ss.selectList("kr.co.sist.user.main.selectRecruitmentBanner");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		UserMainDAO.getInstance().selectAllRecruitment();
		System.out.println(UserMainDAO.getInstance().selectRecruitmentBanner().toString());
	}
}
