package kr.co.sist.user.mypage.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.domain.AcademicAbilityDomain;
import kr.co.sist.user.mypage.domain.AwardDomain;
import kr.co.sist.user.mypage.domain.CareerDomain;
import kr.co.sist.user.mypage.domain.CertificateDomain;
import kr.co.sist.user.mypage.domain.CoverLetterDomain;
import kr.co.sist.user.mypage.domain.IntActyEduDomain;
import kr.co.sist.user.mypage.domain.LanguageDomain;
import kr.co.sist.user.mypage.domain.ResumeDomain;
import kr.co.sist.user.mypage.domain.ResumeMbrInfoDomain;
import kr.co.sist.user.mypage.vo.ResumeVO;
import kr.co.sist.user.mypage.vo.UploadImgVO;
import oracle.jdbc.driver.json.tree.JsonpObjectImpl;

@Component
public class ResumeDAO {
	
	public ResumeMbrInfoDomain selectMbrInfo(String m_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		ResumeMbrInfoDomain resumeMbrInfoDomain = ss.selectOne("kr.co.sist.resume.selectMbrInfo", m_id);
		
		mbh.closeHandler(ss);
		
		return resumeMbrInfoDomain;
	}//selectMbrInfo
	
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
	
	//이력서 제목 선택
	public String selectResumeTitle(String MR_ID) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String resumeTitle = ss.selectOne("kr.co.sist.resume.selectResumeTitle", MR_ID);
		
		mbh.closeHandler(ss);
		
		return resumeTitle;
	}
	
	//인적사항 수정
	public int updateMbrInfo(ResumeVO resumeVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.update("kr.co.sist.resume.updateMbrInfo", resumeVO);
		
		
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
	//Transaction
	public boolean insertResume(HashMap<String, Object> paramMap) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		boolean resultFlag = false;
		int resultCnt = 0;
		int compareCnt = 0; 
		
		try {
			//HashMap<String, Object> paramMap = new HashMap<String, Object>();
			ResumeVO resumeVO = (ResumeVO)paramMap.get("resumeVO");
			String MR_ID = resumeVO.getMR_ID();
			String M_ID = resumeVO.getM_ID();
			
			if( MR_ID.isEmpty() ) { //이력서 추가
				//이력서 추가
				resultCnt += ss.insert("kr.co.sist.resume.insertResume", resumeVO);
				compareCnt += 1;
				MR_ID = resumeVO.getMR_ID();
			} else { //이력서 수정
				//각 항목 삭제
				resultCnt += ss.delete("kr.co.sist.resume.deleteSkill", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteAcademicAbility", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteCareer", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteIIAE", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteCertificate", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteAward", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteLanguage", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deletePortfolio", MR_ID);
				resultCnt += ss.delete("kr.co.sist.resume.deleteCoverLetter", MR_ID);
				int deleteCnt = Integer.parseInt(resumeVO.getPrevItemCnt());
				compareCnt += deleteCnt;
				//이력서 업데이트
				resultCnt += ss.insert("kr.co.sist.resume.updateResume", resumeVO);
				compareCnt +=1;
			}//end else
			
			System.out.println("1 : " + resultCnt);
			System.out.println("1 : " + compareCnt);
			
			//인적사항 업데이트
			resultCnt += ss.update("kr.co.sist.resume.updateMbrInfo", resumeVO);
			compareCnt += 1;
			
			System.out.println("2 : " + resultCnt);
			System.out.println("2 : " + compareCnt);
			//이력서id, 회원id
			HashMap<String, String> idMap = new HashMap<String, String>();
			idMap.put("mr_id", MR_ID);
			idMap.put("m_id", M_ID);
			paramMap.put("idMap", idMap);
			
			//항목 추가//
			//스킬 추가
			List<Map<String, String>> skillList = (List<Map<String, String>>)paramMap.get("skillList");
			if( skillList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertSkill", paramMap);
				compareCnt += skillList.size();
			}//end if
			System.out.println("3 : " + resultCnt);
			System.out.println("3 : " + compareCnt);
			
			//학력
			List<Map<String, String>> academicAbilityList = (List<Map<String, String>>)paramMap.get("academicAbilityList");
			if( academicAbilityList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertAcademicAbility", paramMap);
				compareCnt += academicAbilityList.size();
			}//end if
			System.out.println("4 : " + resultCnt);
			System.out.println("4 : " + compareCnt);
			
			//경력 추가
			List<Map<String, String>> careerList = (List<Map<String, String>>)paramMap.get("careerList");
			if( careerList.size() > 0) {
				ResumeVO ids = (ResumeVO)paramMap.get("resumeVO");
				for( Map<String, String> map : careerList ) {
					map.put("MR_ID", ids.getMR_ID());
					map.put("M_ID", ids.getM_ID());
						
				  if( map.get("C_EMPLOYMENT_STATUS").equals("Y")) {
					  resultCnt += ss.insert("kr.co.sist.resume.insertCareerEmped", map);
				  } else {
//				  if( map.get("C_EMPLOYMENT_STATUS").equals("N")) {
					  resultCnt += ss.insert("kr.co.sist.resume.insertCareerEmp", map);
				  }//end if
			
				}//end for
				compareCnt += careerList.size();
			}//end if
			System.out.println("5 : " + resultCnt);
			System.out.println("5 : " + compareCnt);
			
	//		//인턴,대외활동,교육
			List<Map<String, String>> IIAEList = (List<Map<String, String>>)paramMap.get("IIAEList");
			if( IIAEList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertIIAE", paramMap);
				compareCnt += IIAEList.size();
			}//end if
			System.out.println("6 : " + resultCnt);
			System.out.println("6 : " + compareCnt);
			
	//		//자격증
			List<Map<String, String>> certiList = (List<Map<String, String>>)paramMap.get("certiList");
			if( certiList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertCerti", paramMap);
				compareCnt += certiList.size();
			}//end if
			System.out.println("7 : " + resultCnt);
			System.out.println("7 : " + compareCnt);
			
	//		//수상
			List<Map<String, String>> awardList = (List<Map<String, String>>)paramMap.get("awardList");
			if( awardList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertAward", paramMap);
				compareCnt += awardList.size();
			}//end if
			System.out.println("8 : " + resultCnt);
			System.out.println("8 : " + compareCnt);
			
	//		//어학
			List<Map<String, String>> langList = (List<Map<String, String>>)paramMap.get("langList");
			if( langList.size() > 0) {
				ResumeVO ids = (ResumeVO)paramMap.get("resumeVO");
				for( Map<String, String> map : langList ) {
					map.put("MR_ID", ids.getMR_ID());
					map.put("M_ID", ids.getM_ID());
					if( map.get("L_TYPE").equals("회화능력")) {
						resultCnt += ss.insert("kr.co.sist.resume.insertLangAbility", map);
					}//end if
					if( map.get("L_TYPE").equals("공인시험")) {
						resultCnt += ss.insert("kr.co.sist.resume.insertLangTest", map);
					}//end if
				}//end for
				compareCnt += langList.size();
			}//end if
			System.out.println("9 : " + resultCnt);
			System.out.println("9 : " + compareCnt);
			
	//		//포트폴리오
			List<Map<String, String>> portfolioList = (List<Map<String, String>>)paramMap.get("portfolioList");
			if( portfolioList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertPortfolio", paramMap);
				compareCnt += portfolioList.size();
			}//end if
			System.out.println("10 : " + resultCnt);
			System.out.println("10 : " + compareCnt);
			
	//		//자기소개서
			List<Map<String, String>> coverLetterList = (List<Map<String, String>>)paramMap.get("coverLetterList");
			if( coverLetterList.size() > 0) {
				resultCnt += ss.insert("kr.co.sist.resume.insertCoverLetter", paramMap);
				compareCnt += coverLetterList.size();
			}//end if
			
			System.out.println("11 resultCnt : " + resultCnt);
			System.out.println("11 compareCnt : " + compareCnt);
			
			if( resultCnt == compareCnt ) {
				resultFlag = true;
				ss.commit();
			} else {
				ss.rollback();
			}
		
		} finally {
			mbh.closeHandler(ss);
		}
		return resultFlag;  
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
	/*
	 * public int insertSkill(ResumeVO resumeVO) { MyBatisHandler mbh =
	 * MyBatisHandler.getInstance(); SqlSession ss = mbh.getMyBatisHandler(false);
	 * 
	 * int result = ss.insert("kr.co.sist.resume.insertSkill", resumeVO);
	 * 
	 * return result; }//insertSkill
	 */	
	
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
	
	//이력서 항목 선택
	//skill
	public List<String> selectSkill(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		List<String> result = ss.selectList("kr.co.sist.resume.selectSkill", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectSkill
	
	//ACADEMIC_ABILITY
	public List<AcademicAbilityDomain> selectAcademicAbility(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<AcademicAbilityDomain> result = ss.selectList("kr.co.sist.resume.selectAcademicAbility", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectAcademicAbility
	
	//CAREER
	public List<CareerDomain> selectCareer(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CareerDomain> result = ss.selectList("kr.co.sist.resume.selectCareer", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectCareer
	
	//INTERN_INT_ACTY_EDU
	public List<IntActyEduDomain> selectIntActyEdu(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IntActyEduDomain> result = ss.selectList("kr.co.sist.resume.selectIntActyEdu", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectIntActyEdu
	
	//CERTIFICATE
	public List<CertificateDomain> selectCertificate(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CertificateDomain> result = ss.selectList("kr.co.sist.resume.selectCertificate", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectCertificate
	
	//AWARD
	public List<AwardDomain> selectAward(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<AwardDomain> result = ss.selectList("kr.co.sist.resume.selectAward", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectAward
	
	//LANGUAGE
	public List<LanguageDomain> selectLanguage(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<LanguageDomain> result = ss.selectList("kr.co.sist.resume.selectLanguage", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectLanguage
	
	//PORTFOLIO
	public List<String> selectPortfolio(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<String> result = ss.selectList("kr.co.sist.resume.selectPortfolio", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectLanguage
	
	//COVER_LETTER
	public List<CoverLetterDomain> selectCoverLetter(String mr_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CoverLetterDomain> result = ss.selectList("kr.co.sist.resume.selectCoverLetter", mr_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectLanguage
	
	
	

}//class
