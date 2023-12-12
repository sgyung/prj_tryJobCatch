package kr.co.sist.user.review.service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.review.dao.ReviewDAO;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.vo.ReviewPageVO;

@Component
public class ReviewListProcess {

	@Autowired
	private ReviewDAO rDAO;
	
	public JSONObject reviewList(ReviewPageVO rpVO) {
		JSONObject jsonObj = new JSONObject();
		ReviewService rs = new ReviewService();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			if(rpVO.getSalary() != null && rpVO.getSalary().length > 0) {
				map.put("annual_salary",rpVO.getSalary());
			}
			if(rpVO.getBalance() != null && rpVO.getBalance().length > 0) {
				map.put("work_life_balance",rpVO.getBalance());
			}
			if(rpVO.getCulture() != null && rpVO.getCulture().length > 0) {
				map.put("organizational_culture",rpVO.getCulture());
			}
			if(rpVO.getWelfare() != null && rpVO.getWelfare().length > 0) {
				map.put("welfareList",rpVO.getWelfare());
			}
			if(rpVO.getStability() != null && rpVO.getStability().length > 0) {
				map.put("job_stability",rpVO.getStability());
			}
			if(rpVO.getCareer() != null && rpVO.getCareer().length > 0) {
				map.put("career_growth",rpVO.getCareer());
			}
			
			map.put("startNum", rpVO.getStartNum());
			map.put("endNum", rpVO.getEndNum());
			
			List<CorperationDomain> list = rDAO.selectSearchReview(map);
			int cnt = rDAO.selectReviewTotalCount(map);
			
			String pageNation = rs.pageNation(rpVO);
			
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			
			for(CorperationDomain corperation : list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("cm_co_name", corperation.getCm_co_name());
				jsonTemp.put("cm_id", corperation.getCm_id());
				jsonTemp.put("industry", corperation.getCm_industry());
				jsonTemp.put("cm_co_logo", corperation.getCm_co_logo());
				jsonTemp.put("r_end_date", sdf.format(corperation.getR_end_date()));
				jsonTemp.put("r_id", corperation.getR_id());
				jsonTemp.put("r_title", corperation.getR_title());
				jsonArr.add(jsonTemp);
			}
			
			jsonObj.put("data", jsonArr);
			jsonObj.put("dataSize", cnt);
			jsonObj.put("pageNation", pageNation);
			
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return jsonObj;
	}
	
}
