package kr.co.sist.user.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.mypage.dao.ApplyDAO;
import kr.co.sist.user.mypage.domain.ApplyDomain;
import kr.co.sist.user.qna.dao.QnADAO;
import kr.co.sist.user.qna.domain.QnADomain;
import kr.co.sist.user.qna.vo.QnAPageVO;
import kr.co.sist.user.qna.vo.QnAVO;

@Component
public class QnAService {
	
	@Autowired
	private QnADAO qnaDAO;
	
	public boolean addInquire(QnAVO qnaVO) {
		boolean resultFlag = false;
		int result = qnaDAO.insertInquire(qnaVO);
		if( result == 1) {
			resultFlag = true;
		}//end if
		
		return resultFlag;
	}
	
	public List<QnADomain> getQnAList(QnAPageVO qnaPageVO){
		
		List<QnADomain> list = qnaDAO.selectQnA(qnaPageVO);
		
		return list;
	}
	
	public int getQnATotalCnt(String m_id) {
		int totalCnt = qnaDAO.selectQnATotalCnt(m_id);
		
		return totalCnt;
	}
	
	public QnADomain getOneQnA(String i_id) {
		QnADomain qnaDomain = qnaDAO.selectOneQnA(i_id);
		
		return qnaDomain;
	}
	
}//class
