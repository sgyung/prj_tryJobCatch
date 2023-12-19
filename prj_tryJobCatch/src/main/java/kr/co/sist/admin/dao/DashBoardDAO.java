package kr.co.sist.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.NoticeDomain;
import kr.co.sist.admin.domain.QnADomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.NoticeInsertVO;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;
import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;

@Component
public class DashBoardDAO {
	
	public List<NoticeDomain> selectNewNotice() throws PersistenceException {
		List<NoticeDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.dashboard.selectNotice");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<QnADomain> selectNewQnA() throws PersistenceException {
		List<QnADomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.dashboard.selectQnA");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<UserDomain> selectNewUser() throws PersistenceException {
		List<UserDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.dashboard.selectUser");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<CompanyDomain> selectNewCompany() throws PersistenceException {
		List<CompanyDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.dashboard.selectCompany");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	
}
