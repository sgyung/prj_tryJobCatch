package kr.co.sist.user.qna.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.qna.domain.QnADomain;
import kr.co.sist.user.qna.vo.QnAPageVO;
import kr.co.sist.user.qna.vo.QnAVO;

@Component
public class QnADAO {
	public int insertInquire(QnAVO qnaVO) throws PersistenceException{
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.insert("kr.co.sist.qna.insertInquire", qnaVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectProfile
	
	public List<QnADomain> selectQnA(QnAPageVO qnaPageVO) throws PersistenceException{
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<QnADomain> list = ss.selectList("kr.co.sist.qna.selectQnA", qnaPageVO);
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectProfile
	
	public int selectQnATotalCnt(String m_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int totalCnt = ss.selectOne("kr.co.sist.qna.selectQnATotalCnt", m_id);
		
		mbh.closeHandler(ss);
		
		return totalCnt;
	}
	
	public QnADomain selectOneQnA(String i_id) throws PersistenceException{
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		QnADomain qnaDomain = ss.selectOne("kr.co.sist.qna.selectOneQnA", i_id);
		
		mbh.closeHandler(ss);
		
		return qnaDomain;
	}//selectProfile
	
	
	
}
