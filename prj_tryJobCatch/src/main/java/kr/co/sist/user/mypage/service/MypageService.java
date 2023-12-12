package kr.co.sist.user.mypage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.login.dao.LoginDAO;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.mypage.dao.MypageDAO;
import kr.co.sist.user.mypage.domain.MemberProfileDomain;

@Component
public class MypageService {
	
	@Autowired(required = false)
	private MypageDAO myDAO;
	
	public int getResumeCnt(String m_id) {
		int cnt = myDAO.selectResumeCnt(m_id);
		return cnt;
	}//getResumeCnt
	
	public int getApplyCnt(String m_id) {
		int cnt = myDAO.selectApplyCnt(m_id);
		return cnt;
	}//getApplyCnt
	
	public int getReviewCnt(String m_id) {
		int cnt = myDAO.selectReviewCnt(m_id);
		return cnt;
	}//getReviewCnt
	
	public int getInquireCnt(String m_id) {
		int cnt = myDAO.selectInquireCnt(m_id);
		return cnt;
	}//getInquireCnt
	
	public MemberProfileDomain getProfile(String m_id) {
		MemberProfileDomain profile = myDAO.selectProfile(m_id);
		return profile;
	}//getMbrProfile
	
	
}//class
