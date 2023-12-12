package kr.co.sist.user.mypage.dao;

import java.beans.Transient;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.domain.ResumeDomain;
import kr.co.sist.user.mypage.vo.ResumeVO;
import kr.co.sist.user.mypage.vo.UploadImgVO;

@Component
public class ResumeDAO {
	
	public int updateImg(UploadImgVO uploadImgVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.update("kr.co.sist.resume.updateImg", uploadImgVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//updateImg
	
	public String selectImg(String id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String img = ss.selectOne("kr.co.sist.resume.selectImg", id);
		
		mbh.closeHandler(ss);
		
		return img;
	}//updateImg

	
	//이력서 시퀀스
	public String selectResumeSeq() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String seq = ss.selectOne("kr.co.sist.resume.selectResumeSeq");
		
		mbh.closeHandler(ss);
		
		return seq;
	}//selectResumeSeq
	
	//이력서 선택
	public String selectResume(String M_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String MR_ID = ss.selectOne("kr.co.sist.resume.selectResume", M_ID);
		
		mbh.closeHandler(ss);
		return MR_ID;
	}//selectResume
	
	//인적사항 수정
	public int updateMbrInfo(ResumeVO resumeVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.update("kr.co.sist.resume.updateMbrInfo", resumeVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}//updateMbrInfo
	
	//이력서 수정
	public int updateResume(ResumeVO resumeVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int result = ss.update("kr.co.sist.resume.updateResume", resumeVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}//updateResume
	//이력서 추가
	public int insertResume(ResumeVO resumeVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.insert("kr.co.sist.resume.insertResume", resumeVO);
		
		mbh.closeHandler(ss);
		
		return result;
	}//updateResume
	
	
	////////////////////이력서 항목 삭제////////////////////////
	//스킬 삭제
	public int deleteSkill(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteSkill", MR_ID);
		mbh.closeHandler(ss);
		return result;
	}//deleteSkill
	//학력 삭제
	public int deleteAcademicAbility(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteAcademicAbility", MR_ID);
		mbh.closeHandler(ss);
		return result;
	}//deleteSkill
	//경력 삭제
	public int deleteCareer(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteCareer", MR_ID);
		
		mbh.closeHandler(ss);
		return result;
	}//deleteCareer
	//인턴,대외활동,교육 삭제
	public int deleteIIAE(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteIIAE", MR_ID);

		mbh.closeHandler(ss);
		
		return result;
	}//deleteIIAE
	//자격증 삭제
	public int deleteCertificate(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteCertificate", MR_ID);
		
		mbh.closeHandler(ss);
		
		return result;
	}//deleteCertificate
	//수상 삭제
	public int deleteAward(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteAward", MR_ID);
		
		mbh.closeHandler(ss);
		
		return result;
	}//deleteAward
	//언어 삭제
	public int deleteLanguage(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteLanguage", MR_ID);
		
		mbh.closeHandler(ss);
		
		return result;
	}//deleteLanguage
	//포트폴리오 삭제
	public int deletePortfolio(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deletePortfolio", MR_ID);
		
		mbh.closeHandler(ss);
		
		return result;
	}//deletePortfolio
	//자기소개서 삭제
	public int deleteCoverLetter(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.delete("kr.co.sist.resume.deleteCoverLetter", MR_ID);
		
		mbh.closeHandler(ss);
		
		return result;
	}//deleteCoverLetter
	
	////////////////////이력서 항목 추가////////////////////////
	public int insertSkill(ResumeVO resumeVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		int result = ss.insert("kr.co.sist.resume.insertSkill", resumeVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//insertSkill
	
	
	//이력서 리스트
	public List<ResumeDomain> selectResumeList(String m_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		List<ResumeDomain> resumeList = ss.selectList("kr.co.sist.resume.selectResumeList", m_id);
		
		mbh.closeHandler(ss);
		
		return resumeList;
	}
	//이력서 삭제
	public int deleteResume(String mr_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		int result = ss.update("kr.co.sist.resume.deleteResume", mr_id);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//deleteResume
	

}//class
