package kr.co.sist.user.recruitment.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.service.RecruitmentListProcess;
import kr.co.sist.user.recruitment.service.RecruitmentService;
import kr.co.sist.user.recruitment.vo.PageVO;

@Controller
public class RecruitmentController {

	@Autowired
	private RecruitmentService rs;
	
	@Autowired
	private RecruitmentListProcess rlp;
	
	@GetMapping("/recruitment.do")
	public String recruitmentList(PageVO pVO, Model model) {
		
//		 model.addAttribute("recruitmentList", rs.SearchRecruitment(pVO));
		
		 model.addAttribute("dutyList", rs.allDuty());
		 model.addAttribute("areaList", rs.allArea());
		 model.addAttribute("careerList", rs.allCareer());
		 model.addAttribute("educationList", rs.allEducation());
		 model.addAttribute("industryList", rs.allIndustry());
		 model.addAttribute("employeeTypeList", rs.allEmployeeType());
		
		return "user_recruitment_information";
	}
	
	@ResponseBody
	@GetMapping("/recruitmentList_process.do")
	public String recruitmentListProcess(PageVO pVO) {
		int totalCount = 0;
		int pageScale = 0;
		int currentPage = 0;
		int totalPage = 0;
		int startNum = 0;
		int endNum = 0;
		int pageNumber = 0;
		int startPage = 0;
		int endPage = 0;
		
		
		totalCount = rs.totalCount(pVO);
		pageScale = rs.pageScale();
		currentPage = rs.currentPage(pVO);
		totalPage = rs.totalPage(totalCount, pageScale);
		startNum = rs.startNum(currentPage, pageScale);
		endNum = rs.endNum(startNum, pageScale);
		pageNumber = rs.pageNumber();
		startPage = rs.startPage(currentPage, pageNumber);
		endPage = rs.endPage(startPage, pageNumber, totalPage);
		
		pVO.setTotalPage(totalPage);
		pVO.setStartNum(startNum);
		pVO.setEndNum(endNum);
		pVO.setPageNumber(pageNumber);
		pVO.setEndPage(endPage);
		pVO.setStartPage(startPage);
		
		JSONObject json = rlp.recuitmentList(pVO);
		
		return json.toJSONString();
	}
	
	@GetMapping("/recruitmentDetail.do")
	public String oneRecruitment(@RequestParam("r_id") String r_id, Model model){
		
		System.out.println("================" + r_id);
		
		RecruitmentDomain rd = rs.OneRecruitment(r_id);
		System.out.println(rd);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		
		model.addAttribute("r_id", rd.getR_id());
		model.addAttribute("cm_id", rd.getCm_id());
		model.addAttribute("r_title", rd.getR_title());
		model.addAttribute("r_time", rd.getR_time());
		model.addAttribute("r_sal", rd.getR_sal());
		model.addAttribute("r_start_date", rd.getR_start_date());
		model.addAttribute("r_end_date", rd.getR_end_date());
		model.addAttribute("r_recruitment_volume", rd.getR_recruitment_volume());
		model.addAttribute("r_info", rd.getR_info());
		model.addAttribute("d_name", rd.getD_name());
		model.addAttribute("ind_name", rd.getInd_name());
		model.addAttribute("education", rd.getEducation());
		model.addAttribute("et_name", rd.getEt_name());
		model.addAttribute("rec_name", rd.getRec_name());
		model.addAttribute("wa_name", rd.getWa_name());
		model.addAttribute("cm_co_name", rd.getCm_co_name());
		model.addAttribute("cm_co_type", rd.getCm_co_type());
		model.addAttribute("cm_co_logo", rd.getCm_co_logo());
		model.addAttribute("cm_homepage", rd.getCm_homepage());
		model.addAttribute("cm_emp_num", rd.getCm_emp_num());
		model.addAttribute("cm_establishment_year", sdf.format(rd.getCm_establishment_year()));
		model.addAttribute("rf_field", rd.getRf_field());
		model.addAttribute("rs_name", rd.getRs_name());
		model.addAttribute("r_registration_date", rd.getR_registration_date());
		
		return "user_recruitment_detail";
	}
}
