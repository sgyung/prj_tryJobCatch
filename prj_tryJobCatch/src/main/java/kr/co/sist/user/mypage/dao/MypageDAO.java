package kr.co.sist.user.mypage.dao;


import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.mypage.domain.MemberProfileDomain;

@Component
public class MypageDAO {
	
	public int selectResumeCnt(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.selectOne("kr.co.sist.mypage.selectResumeCnt", M_ID);
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//selectResumeCnt
	
	public int selectApplyCnt(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.selectOne("kr.co.sist.mypage.selectApplyCnt", M_ID);
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//selectResumeCnt
	
	public int selectReviewCnt(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.selectOne("kr.co.sist.mypage.selectReviewCnt", M_ID);
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//selectResumeCnt
	
	public int selectInquireCnt(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.selectOne("kr.co.sist.mypage.selectInquireCnt", M_ID);
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//selectResumeCnt
	
	public MemberProfileDomain selectProfile(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		MemberProfileDomain mpDomain = new MemberProfileDomain();
		
		mpDomain = ss.selectOne("kr.co.sist.mypage.selectMbrProfile", M_ID);
		
		mbh.closeHandler(ss);
		
		return mpDomain;
	}//selectProfile
	
	

	
}//class
