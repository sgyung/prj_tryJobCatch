package kr.co.sist.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;
import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;

public class UserDAO {
	private static UserDAO uDAO;
	
	public UserDAO() {
	}
	
	public static UserDAO getInstance() {
		if(uDAO == null) {
			uDAO = new UserDAO();
		}
		return uDAO;
	}
	
	public int userTotalCount(PageVO pVO) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.selectOne("admin.user.userTotalCount",pVO);
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public List<UserDomain> selectSearchUser(PageVO pVO) throws PersistenceException{
		List<UserDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.user.selectSearchUser",pVO);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	
	public List<UserDomain> selectAllUser() throws PersistenceException {
		List<UserDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.user.userList");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public UserDomain selectUser(String m_id) throws PersistenceException {
		UserDomain ud = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		ud = ss.selectOne("admin.user.userInfo", m_id);
		
		mbh.closeHandler(ss);
		
		return ud;
	}
	
	public void deleteUser(String m_id) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.user.userDelete", m_id);
		
		mbh.closeHandler(ss);
	}
	
	public void updateUser(UserModifyVO umVO) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.user.userModify", umVO);
		
		mbh.closeHandler(ss);
	}
	
}
