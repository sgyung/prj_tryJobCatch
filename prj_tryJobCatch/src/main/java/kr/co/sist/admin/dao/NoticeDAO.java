package kr.co.sist.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.NoticeDomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.NoticeInsertVO;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;
import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;

@Component
public class NoticeDAO {
	
	public List<NoticeDomain> selectAllNotice() throws PersistenceException {
		List<NoticeDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.notice.noticeList");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public NoticeDomain selectNotice(String n_id) throws PersistenceException {
		NoticeDomain nd = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		nd = ss.selectOne("admin.notice.noticeInfo", n_id);
		
		mbh.closeHandler(ss);
		
		return nd;
	}
	
	public void insertNotice(NoticeInsertVO niVO) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.insert("admin.notice.noticeDelete", niVO);
		
		mbh.closeHandler(ss);
	}
	
	public void deleteNotice(String n_id) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.notice.noticeDelete", n_id);
		
		mbh.closeHandler(ss);
	}
	
	public void updateNotice(NoticeDomain nd) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.notice.noticeModify", nd);
		
		mbh.closeHandler(ss);
	}
	
}
