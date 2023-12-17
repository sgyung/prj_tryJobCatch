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
import kr.co.sist.user.review.domain.BalanceDomain;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.domain.CultureDomain;
import kr.co.sist.user.review.domain.ReviewCareerDomain;
import kr.co.sist.user.review.domain.SalaryDomain;
import kr.co.sist.user.review.domain.StabilityDomain;
import kr.co.sist.user.review.domain.WelfareDomain;
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
			if(rpVO.getKeyword() != null) {
				map.put("keyword", rpVO.getKeyword());
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
	
	public JSONObject reviewModify(ReviewPageVO rpVO) {
		JSONObject jsonObj = new JSONObject();
		ReviewService rs = new ReviewService();
		try {
			
			System.out.println("+++++++++++++++++++++++reviewModify+++++++++++" + rpVO.getRv_id());
			
			SalaryDomain salary = rs.checkedSalary(rpVO.getRv_id());
			BalanceDomain balance = rs.checkedBalance(rpVO.getRv_id());
			CultureDomain culture = rs.checkedCulture(rpVO.getRv_id());
			WelfareDomain welfare = rs.checkedWelfare(rpVO.getRv_id());
			StabilityDomain stability = rs.checkedStability(rpVO.getRv_id());
			ReviewCareerDomain career = rs.checkedCareer(rpVO.getRv_id());
			
			jsonObj.put("sal", salary.getAs_sal());
			jsonObj.put("first_sal", salary.getAs_first_sal());
			jsonObj.put("retirement_pay", salary.getAs_retirement_pay());
			jsonObj.put("bonus", salary.getAs_bonus());
			jsonObj.put("fair_evaluation", career.getCg_fair_evaluation());
			jsonObj.put("cg", career.getCg());
			jsonObj.put("capable_colleague", career.getCg_capable_colleague());
			jsonObj.put("team", culture.getOc_team());
			jsonObj.put("clothes", culture.getOc_clothes());
			jsonObj.put("meeting", culture.getOc_meeting());
			jsonObj.put("work", culture.getOc_work());
			jsonObj.put("system", culture.getOc_system());
			jsonObj.put("culture", culture.getOc_culture());
			jsonObj.put("provide", balance.getWlb_provide());
			jsonObj.put("gohome", balance.getWlb_gohome());
			jsonObj.put("break", balance.getWlb_break());
			jsonObj.put("grow_co", stability.getJs_grow_co());
			jsonObj.put("mgmt_vision", stability.getJs_mgmt_vision());
			jsonObj.put("best", stability.getJs_best());
			jsonObj.put("study", welfare.getW_study());
			jsonObj.put("spply", welfare.getW_spply());
			jsonObj.put("holiday_bonus", welfare.getW_holiday_bonus());
			jsonObj.put("vacation_bonus", welfare.getW_vacation_bonus());
			jsonObj.put("stock_option", welfare.getW_stock_option());
			jsonObj.put("as_id", salary.getAs_id());
			jsonObj.put("wlb_id", balance.getWlb_id());
			jsonObj.put("oc_id", culture.getOc_id());
			jsonObj.put("w_id", welfare.getW_id());
			jsonObj.put("js_id", stability.getJs_id());
			jsonObj.put("cg_id", career.getCg_id());
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return jsonObj;
	}
	
}
