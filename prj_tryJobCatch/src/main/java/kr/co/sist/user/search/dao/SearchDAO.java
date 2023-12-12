package kr.co.sist.user.search.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.search.domain.SearchIdDomain;
import kr.co.sist.user.search.vo.NewPassVO;
import kr.co.sist.user.search.vo.SearchIdVO;
import kr.co.sist.user.search.vo.SearchPassVO;

@Component
public class SearchDAO {
	
	public SearchIdDomain selectUserId(SearchIdVO searchIdVO) {
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		SearchIdDomain result = ss.selectOne("kr.co.sist.search.selectUserId", searchIdVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectUserId
	
	public String selectUser(SearchPassVO searchPassVO) {
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String result = ss.selectOne("kr.co.sist.search.selectUser", searchPassVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectUserId
	
	public int updateNewPass(NewPassVO newPassVO) {
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int result = ss.update("kr.co.sist.search.updatePass", newPassVO);
		
		ss.commit();
		mbh.closeHandler(ss);
		
		return result;
	}//updateNewPass
}//class
