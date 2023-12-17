package kr.co.sist.user.mypage.service;


import java.beans.Transient;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.dao.ModifyDAO;
import kr.co.sist.user.mypage.dao.ResumeDAO;
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

@Component
public class ResumeService {
	
	@Autowired(required = false)
	private ResumeDAO resumeDAO;
	
	public ResumeMbrInfoDomain getMbrInfo(String m_id) {
		
		ResumeMbrInfoDomain resumeMbrInfoDomain= resumeDAO.selectMbrInfo(m_id);
		
		return resumeMbrInfoDomain;
	}//getMbrInfo
	
	public JSONObject uploadImg(UploadImgVO uploadImgVO) {
		
		int result = resumeDAO.updateImg(uploadImgVO);
		JSONObject json = new JSONObject();
		String msg = "파일 업로드에 실패하였습니다.";
		if( result == 1 ) {
			msg = "파일이 업로드 되었습니다.";
			json.put("msg", msg);
		}//end if
		
		return json;
	}//uploadImg
	
	
	public String getImg(String id) {
		String img = resumeDAO.selectImg(id);
		
		return img;
	}//getImg
	
	public boolean registResume(ResumeVO resumeVO) {
		boolean resultFlag = false;
		
		String m_id = resumeVO.getM_ID();
		String mr_id = resumeVO.getMR_ID();
			
			//항목 추가
			//스킬
			List<Map<String, String>> skillList = new ArrayList<Map<String, String>>();
			String[] skillName = resumeVO.getS_NAME();
			if( skillName != null && skillName.length > 0 ) {
				for( int i = 0; i < skillName.length; i++) {
					HashMap<String, String> skillMap = new HashMap<String, String>();
					skillMap.put("S_NAME", skillName[i]);
					
					skillList.add(skillMap);
				}//end for
			}//end if
			
			//학력
			List<Map<String, String>> academicAbilityList = new ArrayList<Map<String, String>>();
			String[] AA_SCHOOL_DIVISION = resumeVO.getAA_SCHOOL_DIVISION();
			if( AA_SCHOOL_DIVISION != null && AA_SCHOOL_DIVISION.length > 0 ) {
				String[] AA_SCHOOL_NAME = resumeVO.getAA_SCHOOL_NAME();
				String[] AA_ENTRANCE_DATE = resumeVO.getAA_ENTRANCE_DATE();
				String[] AA_GRADUATION_DATE = resumeVO.getAA_GRADUATION_DATE();
				String[] AA_GRADUATION_CONDITION = resumeVO.getAA_GRADUATION_CONDITION();
				String[] AA_MAJOR = resumeVO.getAA_MAJOR_NAME();
				String[] AA_CREDIT = resumeVO.getAA_CREDIT();
				String[] AA_DEGREE = resumeVO.getAA_DEGREE();
				for( int i = 0; i < AA_SCHOOL_DIVISION.length; i++) {
					HashMap<String, String> schoolDivisionMap = new HashMap<String, String>();
					schoolDivisionMap.put("AA_SCHOOL_DIVISION",  AA_SCHOOL_DIVISION[i]);
					schoolDivisionMap.put("AA_SCHOOL_NAME",  AA_SCHOOL_NAME[i]);
					schoolDivisionMap.put("AA_ENTRANCE_DATE",  AA_ENTRANCE_DATE[i]);
					
					schoolDivisionMap.put("AA_GRADUATION_CONDITION",  AA_GRADUATION_CONDITION[i]);
					schoolDivisionMap.put("AA_GRADUATION_DATE",  "");
					schoolDivisionMap.put("AA_MAJOR_NAME",  "");
					schoolDivisionMap.put("AA_CREDIT",  "");
					schoolDivisionMap.put("AA_DEGREE",  "");
					
					if( AA_GRADUATION_DATE.length > 0 ) {
						schoolDivisionMap.put("AA_GRADUATION_DATE",  AA_GRADUATION_DATE[i]);
					}
					if( AA_MAJOR.length > 0 ) {
						schoolDivisionMap.put("AA_MAJOR_NAME",  AA_MAJOR[i] );
					}
					if ( AA_CREDIT.length > 0 ) {
						schoolDivisionMap.put("AA_CREDIT",  AA_CREDIT[i] );
					}
					if ( AA_DEGREE.length > 0) {
						schoolDivisionMap.put("AA_DEGREE",  AA_DEGREE[i]);
					}
				
					academicAbilityList.add(schoolDivisionMap);
				}//end for
			}//end if
				
			//경력
			List<Map<String, String>> careerList = new ArrayList<Map<String, String>>();
			String[] C_CORPORATE_NAME = resumeVO.getC_CORPORATE_NAME();
			if( C_CORPORATE_NAME != null && C_CORPORATE_NAME.length > 0  ) {
				String[] C_DEPARTMENT_NAME = resumeVO.getC_DEPARTMENT_NAME();
				String[] C_JOINING_DATE = resumeVO.getC_JOINING_DATE();
				String[] C_RETIREMENT_DATE = resumeVO.getC_RETIREMENT_DATE();
				String[] C_EMPLOYMENT_STATUS = resumeVO.getC_EMPLOYMENT_STATUS();
				String[] C_POSITION = resumeVO.getC_POSITION();
				String[] C_DUTY = resumeVO.getC_DUTY();
				
				for( int i = 0; i<C_CORPORATE_NAME.length; i++) {
					HashMap<String, String> careerMap = new HashMap<String, String>();
					
					careerMap.put("C_CORPORATE_NAME", C_CORPORATE_NAME[i]);
					careerMap.put("C_DEPARTMENT_NAME", C_DEPARTMENT_NAME[i]);
					careerMap.put("C_JOINING_DATE", C_JOINING_DATE[i]);
					careerMap.put("C_EMPLOYMENT_STATUS", C_EMPLOYMENT_STATUS[i]);
					careerMap.put("C_POSITION", C_POSITION[i]);
					careerMap.put("C_DUTY", C_DUTY[i]);
					careerMap.put("C_RETIREMENT_DATE", "");
					
					if( C_EMPLOYMENT_STATUS[i].equals("N") ) {
						careerMap.put("C_RETIREMENT_DATE", C_RETIREMENT_DATE[i]);
					}
					
					careerList.add(careerMap);
				}//end for
			}//end if
			
			//인턴,대외활동,교육
			List<Map<String, String>> IIAEList = new ArrayList<Map<String, String>>();
			String[] IIAE_SECTION = resumeVO.getIIAE_SECTION();
			if( IIAE_SECTION != null && IIAE_SECTION.length > 0  ) {
				String[] IIAE_INSTITUTION_NAME = resumeVO.getIIAE_INSTITUTION_NAME();
				String[] IIAE_START_DATE = resumeVO.getIIAE_START_DATE();
				String[] IIAE_END_DATE = resumeVO.getIIAE_END_DATE();
				String[] IIAE_CONTENT = resumeVO.getIIAE_CONTENT();
				
				for( int i = 0; i < IIAE_SECTION.length; i++) {
					HashMap<String, String> IIAEMap = new HashMap<String, String>();
					IIAEMap.put("IIAE_SECTION", IIAE_SECTION[i]);
					IIAEMap.put("IIAE_INSTITUTION_NAME", IIAE_INSTITUTION_NAME[i]);
					IIAEMap.put("IIAE_START_DATE", IIAE_START_DATE[i]);
					IIAEMap.put("IIAE_END_DATE", IIAE_END_DATE[i]);
					IIAEMap.put("IIAE_CONTENT", IIAE_CONTENT[i]);
					
					IIAEList.add(IIAEMap);
				}//end for
			}//end if
			
			//자격증
			List<Map<String, String>> certiList = new ArrayList<Map<String, String>>();
			String[] CER_NAME = resumeVO.getCER_NAME();
			if(  CER_NAME != null && CER_NAME.length > 0 ) {
				String[] CER_ISSUING_ORGANIZATION = resumeVO.getCER_ISSUING_ORGANIZATION();
				String[] CER_ACQUISITION_DATE = resumeVO.getCER_ACQUISITION_DATE();
				for( int i = 0; i < CER_NAME.length; i++) {
					HashMap<String, String> certiMap = new HashMap<String, String>();
					certiMap.put("CER_NAME", CER_NAME[i]);
					certiMap.put("CER_ISSUING_ORGANIZATION", CER_ISSUING_ORGANIZATION[i]);
					certiMap.put("CER_ACQUISITION_DATE", CER_ACQUISITION_DATE[i]);
					
					certiList.add(certiMap);
				}//end for
			}//end if
			
			//수상
			List<Map<String, String>> awardList = new ArrayList<Map<String, String>>();
			String[] A_NAME = resumeVO.getA_NAME();
			if(A_NAME != null  && A_NAME.length > 0  ) {
				String[] A_INSTITUTION = resumeVO.getA_INSTITUTION();
				String[] A_DATE = resumeVO.getA_DATE();
				String[] A_CONTENT = resumeVO.getA_CONTENT();
				for( int i = 0; i < A_NAME.length; i++) {
					HashMap<String, String> awardMap = new HashMap<String, String>();
					awardMap.put("A_NAME", A_NAME[i]);
					awardMap.put("A_INSTITUTION", A_INSTITUTION[i]);
					awardMap.put("A_DATE", A_DATE[i]);
					awardMap.put("A_CONTENT", A_CONTENT[i]);
					
					awardList.add(awardMap);
				}//end for
			}//end if
			
			//어학
			List<Map<String, String>> langList = new ArrayList<Map<String, String>>();
			String[] L_TYPE = resumeVO.getL_TYPE();
			if( L_TYPE != null && L_TYPE.length > 0  ) {
				String[] L_NAME = resumeVO.getL_NAME();
				String[] L_ABILITY = resumeVO.getL_ABILITY();
				String[] L_TEST_NAME = resumeVO.getL_TEST_NAME();
				String[] L_SCORE = resumeVO.getL_SCORE();
				String[] L_ACQUISITION_DATE = resumeVO.getL_ACQUISITION_DATE();
				for( int i = 0; i < L_TYPE.length; i++) {
					HashMap<String, String> langMap = new HashMap<String, String>();
					
					langMap.put("L_TYPE", L_TYPE[i]);
					langMap.put("L_NAME", L_NAME[i]);
					langMap.put("L_ABILITY", "");
					langMap.put("L_TEST_NAME", "");
					langMap.put("L_SCORE", "");
					langMap.put("L_ACQUISITION_DATE", "");
					
					if( L_ABILITY.length > 0 ) {
						langMap.put("L_ABILITY", L_ABILITY[i]);
					} 
					if( L_TEST_NAME.length > 0 ) {
						langMap.put("L_TEST_NAME", L_TEST_NAME[i]);
						langMap.put("L_SCORE", L_SCORE[i]);
						langMap.put("L_ACQUISITION_DATE", L_ACQUISITION_DATE[i]);
					} 
				
					langList.add(langMap);
					
				}//end for
			}//end if
			
			//포트폴리오
			List<Map<String, String>> portfolioList = new ArrayList<Map<String, String>>();
			String[] P_URL = resumeVO.getP_URL();
			if( P_URL != null && P_URL.length > 0  ) {
				for( int i = 0; i < P_URL.length; i++) {
					HashMap<String, String> portfolioMap = new HashMap<String, String>();
					portfolioMap.put("P_URL", P_URL[i]);
					
					portfolioList.add(portfolioMap);
				}//end for
			}//end if
			
			//자기소개서
			List<Map<String, String>> coverLetterList = new ArrayList<Map<String, String>>();
			String[] CL_TITLE = resumeVO.getCL_TITLE();
			if( CL_TITLE != null && CL_TITLE.length > 0   ) {
				for( int i = 0; i < CL_TITLE.length; i++) {
					HashMap<String, String> coverLetterMap = new HashMap<String, String>();
					String[] CL_CONTENT = resumeVO.getCL_CONTENT();
					coverLetterMap.put("CL_TITLE", CL_TITLE[i]);
					coverLetterMap.put("CL_CONTENT", CL_CONTENT[i]);
					
					coverLetterList.add(coverLetterMap);
				}//end for
			}//end if
			
			
			HashMap<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("resumeVO", resumeVO);
			paramMap.put("skillList",skillList);
			paramMap.put("careerList", careerList);
			paramMap.put("IIAEList", IIAEList);
			paramMap.put("certiList", certiList);
			paramMap.put("awardList", awardList);
			paramMap.put("portfolioList", portfolioList);
			paramMap.put("coverLetterList", coverLetterList);
			paramMap.put("academicAbilityList", academicAbilityList);
			paramMap.put("langList", langList);
			
			resultFlag = resumeDAO.insertResume(paramMap);
		//}
		 
		
		return resultFlag;
	}//registResume
	
	public List<ResumeDomain> resumeList(String m_id) {
		List<ResumeDomain> resumeList = resumeDAO.selectResumeList(m_id);
		
		return resumeList;
	}//resumeList
	
	public boolean removeResume(String mr_id) {
		boolean resultFlag = false;
		int result = resumeDAO.deleteResume(mr_id);
		if( result == 1) {
			resultFlag = true;
		}//end if
		
		return resultFlag;
	}//removeResume
	
	public JSONObject getResume(String mr_id) {
		JSONObject json = new JSONObject();
		
		List<String> skill = resumeDAO.selectSkill(mr_id);
		List<AcademicAbilityDomain> academicAbility = resumeDAO.selectAcademicAbility(mr_id);
		List<CareerDomain> career = resumeDAO.selectCareer(mr_id);
		List<IntActyEduDomain> intActyEdu = resumeDAO.selectIntActyEdu(mr_id);
		List<CertificateDomain> certificate = resumeDAO.selectCertificate(mr_id);
		List<AwardDomain> award = resumeDAO.selectAward(mr_id);
		List<LanguageDomain> language = resumeDAO.selectLanguage(mr_id);
		List<String> portfolio = resumeDAO.selectPortfolio(mr_id);
		List<CoverLetterDomain> coverLetter = resumeDAO.selectCoverLetter(mr_id);
		String resumeTitle = resumeDAO.selectResumeTitle(mr_id);
		
		json.put("skill", skill);
		json.put("academicAbility", academicAbility);
		json.put("career", career);
		json.put("intActyEdu", intActyEdu);
		json.put("certificate", certificate);
		json.put("award", award);
		json.put("language", language);
		json.put("portfolio", portfolio);
		json.put("coverLetter", coverLetter);
		json.put("resumeTitle", resumeTitle);
		
		return json;
		
	}//getResume
	
	
}//class
