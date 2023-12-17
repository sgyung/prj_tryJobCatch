package kr.co.sist.user.notice.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.notice.domain.NoticeDomain;
import kr.co.sist.user.notice.vo.PageVO;

@Component
public class NoticeDAO {

	public int selectNoticeTotalCount(PageVO pVO) throws PersistenceException {
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.selectOne("kr.co.sist.user.notice.selectNoticeTotalCount",pVO);
		mbh.closeHandler(ss);
		
		return cnt; 
	}
	
	public List<NoticeDomain> selectNoticeList(PageVO pVO) throws PersistenceException{
		List<NoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.notice.selectNoticeList",pVO);
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public NoticeDomain selectNoticeDetail(String id) throws PersistenceException{
		NoticeDomain nd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		nd = ss.selectOne("kr.co.sist.user.notice.selectNoticeDetail",id);
		
		mbh.closeHandler(ss);
		
		return nd;
	}
	
	public static void main(String[] args) {
		NoticeDAO nDAO = new NoticeDAO();
		PageVO pVO = new PageVO();
		pVO.setStartNum(1);
		pVO.setEndNum(2);
		
		System.out.println(nDAO.selectNoticeDetail("n_00001"));
	}
}
