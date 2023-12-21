package kr.co.sist.user.company.service;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.company.dao.CoMypageDAO;
import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;
import kr.co.sist.user.mypage.vo.UploadImgVO;

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
	
	public JSONObject uploadImg(UploadImgVO uploadImgVO) {
		
		int result = coMypageDAO.updateCoImg(uploadImgVO);
		JSONObject json = new JSONObject();
		String msg = "파일 업로드에 실패하였습니다.";
		if( result == 1 ) {
			msg = "파일이 업로드 되었습니다.";
			json.put("msg", msg);
		}//end if
		
		return json;
	}//uploadImg
	
	public String getImg(String id) {
		String img = coMypageDAO.selectImg(id);
		
		return img;
	}//getImg
	
	
	
	
}
