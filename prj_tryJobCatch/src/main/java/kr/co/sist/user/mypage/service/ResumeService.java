package kr.co.sist.user.mypage.service;


import java.beans.Transient;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.dao.ModifyDAO;
import kr.co.sist.user.mypage.dao.ResumeDAO;
import kr.co.sist.user.mypage.domain.ResumeDomain;
import kr.co.sist.user.mypage.vo.ResumeVO;
import kr.co.sist.user.mypage.vo.UploadImgVO;

@Component
public class ResumeService {
	
	@Autowired(required = false)
	private ResumeDAO resumeDAO;
	
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
	//	String mr_id = resumeDAO.selectResume(m_id);
		String mr_id = resumeVO.getMR_ID();
		//이력서가 있다면
		try {
		if( !mr_id.isEmpty() ) {
			System.out.println("not empty");
			//이력서 업데이트
			//resumeDAO.updateResume(resumeVO);
			//인적사항 업데이트
			//resumeDAO.updateMbrInfo(resumeVO);
			//항목 삭제
//			resumeDAO.deleteSkill(mr_id);
//			resumeDAO.deleteAcademicAbility(mr_id);
//			resumeDAO.deleteCareer(mr_id);
//			resumeDAO.deleteIIAE(mr_id);
//			resumeDAO.deleteAward(mr_id);
//			resumeDAO.deleteCertificate(mr_id);
//			resumeDAO.deleteCoverLetter(mr_id);
//			resumeDAO.deleteLanguage(mr_id);
//			resumeDAO.deletePortfolio(mr_id);
			
			//항목 추가
			resumeDAO.insertSkill(resumeVO);
			
		} 
		if( mr_id.isEmpty() ){//이력서가 없다면
			System.out.println(" empty");
			//이력서 시퀀스
			String mr_seq = resumeDAO.selectResumeSeq();
			resumeVO.setMR_ID(mr_seq);
			//이력서 추가
			resumeDAO.insertResume(resumeVO);
			//인적사항 업데이트
			resumeDAO.updateMbrInfo(resumeVO);
			
			//항목 추가
			resumeDAO.insertSkill(resumeVO);
		}
		} catch(Exception e) {
			e.printStackTrace();
		}
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
	
	
}//class
