package kr.co.sist.user.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.company.dao.CoMypageDAO;
import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;

@Component
public class CoMypageService {

	@Autowired
	private CoMypageDAO coMypageDAO;
	
	public int getMyRecruitmentCnt(String cm_id) {
		int result = coMypageDAO.selectRecruitmentCnt(cm_id);
		
		return result;
	}//getMyRecruitmentCnt
	
	public int getAllApplyCnt(String cm_id) {
		int result = coMypageDAO.selectAllApplyCnt(cm_id);
		
		return result;
	}//getAllApplyCnt
	
	public CoLatestRecruitDomain getLatestRecruitment(String cm_id) {
		CoLatestRecruitDomain result = coMypageDAO.selectLatestRecruitment(cm_id);
		
		return result;
	}//getAllApplyCnt
	
	public CoProfileDomain getCoProfile(String cm_id) {
		CoProfileDomain result = coMypageDAO.selectCoProfile(cm_id);
		
		return result;
	}//getAllApplyCnt
}
