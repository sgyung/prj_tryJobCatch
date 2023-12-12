package kr.co.sist.user.review.controller;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.review.domain.BalanceDomain;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.domain.CultureDomain;
import kr.co.sist.user.review.domain.ReviewCareerDomain;
import kr.co.sist.user.review.domain.SalaryDomain;
import kr.co.sist.user.review.domain.StabilityDomain;
import kr.co.sist.user.review.domain.WelfareDomain;
import kr.co.sist.user.review.service.ReviewListProcess;
import kr.co.sist.user.review.service.ReviewService;
import kr.co.sist.user.review.vo.ReviewPageVO;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rs;
	
	@Autowired
	private ReviewListProcess rlp;
	
	@GetMapping("/review_home.do")
	public String reviewHome() {
		
		return "user_review_home";
	}
	
	@GetMapping("/reviewDetail.do")
	public String reviewDetail(@RequestParam("cm_id") String id, Model model) {
		SalaryDomain salary = rs.selectSalaryNum(id);
		BalanceDomain balance = rs.selectBalanceNum(id);
		WelfareDomain welfare = rs.selectWelfareNum(id);
		CultureDomain culture = rs.selectCultureNum(id);
		ReviewCareerDomain career = rs.selectCareerNum(id);
		StabilityDomain stability = rs.selectStabilityNum(id);
		CorperationDomain cd = rs.corperationInfo(id);
		List<CorperationDomain> list = rs.recruitmentInfo(id);
		
		model.addAttribute("totalSalary", salary.getTotal_sum());
		model.addAttribute("sal", salary.getSal_num());
		model.addAttribute("firstSal", salary.getFirstsal_num());
		model.addAttribute("bonus", salary.getBonus_num());
		model.addAttribute("retirementPay", salary.getRetirementpay_num());
		model.addAttribute("totalBalance", balance.getTotal_sum());
		model.addAttribute("provide", balance.getProvide_count());
		model.addAttribute("break", balance.getBreak_count());
		model.addAttribute("goHome", balance.getGohome_count());
		model.addAttribute("totalCulture", culture.getTotal_sum());
		model.addAttribute("clothes", culture.getClothes_count());
		model.addAttribute("culture", culture.getCulture_count());
		model.addAttribute("meeting", culture.getMeeting_count());
		model.addAttribute("system", culture.getSystem_count());
		model.addAttribute("team", culture.getTeam_count());
		model.addAttribute("work", culture.getWork_count());
		model.addAttribute("totalStability", stability.getTotal_sum());
		model.addAttribute("best", stability.getBest_count());
		model.addAttribute("growCo", stability.getGrow_co_count());
		model.addAttribute("vision", stability.getMgmt_vision_count());
		model.addAttribute("totalWelfare", welfare.getTotal_sum());
		model.addAttribute("holiday", welfare.getHoliday_bonus_count());
		model.addAttribute("spply", welfare.getSpply_count());
		model.addAttribute("stock", welfare.getStock_option_count());
		model.addAttribute("study", welfare.getStudy_count());
		model.addAttribute("vacation", welfare.getVacation_bonus_count());
		model.addAttribute("totalCareer", career.getTotal_sum());
		model.addAttribute("colleague", career.getCapable_colleague_count());
		model.addAttribute("careerGrowth", career.getCareer_growth_count());
		model.addAttribute("evaluation", career.getFair_evaluation_count());
		model.addAttribute("logo", cd.getCm_co_logo());
		model.addAttribute("co_name", cd.getCm_co_name());
		model.addAttribute("industry", cd.getCm_industry());
		model.addAttribute("recruitmentList", list);
		model.addAttribute("recruitmentCnt",list.size());
		
		return "user_corperation_review_detail";
	}
	
	@ResponseBody
	@GetMapping("/reviewList_process.do")
	public String reviewListProcess(ReviewPageVO rpVO) {
		int totalCount = 0;
		int pageScale = 0;
		int currentPage = 0;
		int totalPage = 0;
		int startNum = 0;
		int endNum = 0;
		int pageNumber = 0;
		int startPage = 0;
		int endPage = 0;
		
		totalCount = rs.reviewTotalCount(rpVO);
		pageScale = rs.pageScale();
		currentPage = rs.currentPage(rpVO);
		totalPage = rs.totalPage(totalCount, pageScale);
		startNum = rs.startNum(currentPage, pageScale);
		endNum = rs.endNum(startNum, pageScale);
		pageNumber = rs.pageNumber();
		startPage = rs.startPage(currentPage, pageNumber);
		endPage = rs.endPage(startPage, pageNumber, totalPage);
		
		rpVO.setTotalPage(totalPage);
		rpVO.setStartNum(startNum);
		rpVO.setEndNum(endNum);
		rpVO.setPageNumber(pageNumber);
		rpVO.setEndPage(endPage);
		rpVO.setStartPage(startPage);
		
		JSONObject json = rlp.reviewList(rpVO);
		
		return json.toJSONString();
	}
	
	
	
}
