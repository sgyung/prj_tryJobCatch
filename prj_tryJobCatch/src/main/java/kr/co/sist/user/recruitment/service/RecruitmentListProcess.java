package kr.co.sist.user.recruitment.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.recruitment.dao.UserRecruitmentDAO;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.vo.ApplyVO;
import kr.co.sist.user.recruitment.vo.PageVO;
import kr.co.sist.user.review.domain.LikeDomain;

@Component
public class RecruitmentListProcess {
	
	@Autowired
	private UserRecruitmentDAO urDAO;
	
	
	public JSONObject recuitmentList(PageVO pVO) {
		JSONObject jsonObj = new JSONObject();
		RecruitmentService rs = new RecruitmentService();
		
		try {
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			List<RecruitmentDomain> list = urDAO.selectSearchRecruitment(pVO);
			int cnt = urDAO.recruitmentTotalCount(pVO);
			
			
			String pageNaion = rs.pageNation(pVO);
			
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
		
			for(RecruitmentDomain recruitment : list) {
			
				jsonTemp = new JSONObject();
				jsonTemp.put("cm_co_name", recruitment.getCm_co_name());
				jsonTemp.put("cm_id", recruitment.getCm_id());
				jsonTemp.put("r_id", recruitment.getR_id());
				jsonTemp.put("r_title", recruitment.getR_title());
				jsonTemp.put("education", recruitment.getEducation());
				jsonTemp.put("et_name", recruitment.getEt_name());
				jsonTemp.put("r_end_date", sdf.format(recruitment.getR_end_date()));
				jsonTemp.put("r_sal", recruitment.getR_sal());
				jsonTemp.put("rec_name", recruitment.getRec_name());
				jsonTemp.put("wa_name", recruitment.getWa_name());
				jsonArr.add(jsonTemp);
			}
			
			jsonObj.put("data", jsonArr);
			jsonObj.put("dataSize", cnt);
			jsonObj.put("pageNation", pageNaion);
			
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj;
	}
	
	public JSONObject applyState(ApplyVO aVO) {
		JSONObject jsonObj = new JSONObject();
		RecruitmentService rs = new RecruitmentService();
		
		try {
			
			String Condition = rs.applyCondition(aVO);
			
			jsonObj.put("condition", Condition);
			
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj;
	}
	
}
