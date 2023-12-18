package kr.co.sist.user.company.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.company.dao.CoRecruitDAO;
import kr.co.sist.user.company.domain.CareerDomain;
import kr.co.sist.user.company.domain.DutyDomain;
import kr.co.sist.user.company.domain.EducationDomain;
import kr.co.sist.user.company.domain.EmpTypeDomain;
import kr.co.sist.user.company.domain.IndustryDomain;
import kr.co.sist.user.company.domain.RecruitDetailDomain;
import kr.co.sist.user.company.domain.RecruitListDomain;
import kr.co.sist.user.company.domain.WorkAreaDomain;
import kr.co.sist.user.company.service.CoRecruitService;
import kr.co.sist.user.company.vo.RecruitmentVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class CoRecruitController {
	
	@Autowired
	private CoRecruitService coRecruitService;
	
	@GetMapping("/company/coRegistRecruitmentFrm.do")
	public String registRecruitmentFrm(Model model, @Param(value="r_id")String r_id, HttpSession session) {
		
		List<DutyDomain> dutyList = coRecruitService.getDutyList();
		List<IndustryDomain> industryList = coRecruitService.getIndustryList();
		List<CareerDomain> careerList = coRecruitService.getCareerList();
		List<EducationDomain> educationList = coRecruitService.getEducationList();
		List<EmpTypeDomain> empTypeList = coRecruitService.getEmpTypeList();
		List<WorkAreaDomain> workAreaList = coRecruitService.getWorkAreaList();
		
		model.addAttribute("dutyList", dutyList);
		model.addAttribute("industryList", industryList);
		model.addAttribute("careerList", careerList);
		model.addAttribute("educationList", educationList);
		model.addAttribute("empTypeList", empTypeList);
		model.addAttribute("workAreaList", workAreaList);
		
		if( r_id != null ) {
			RecruitDetailDomain recruitDetail = coRecruitService.getRecruitDetail(r_id);
			recruitDetail.setR_ID(r_id);
			model.addAttribute("recruitDetail", recruitDetail);
		}
		
		return "company/co_regist_recruitment_frm";
	}
	
	@PostMapping("/company/registRecruitment.do")
	public String registRecruitment(Model model, HttpSession session, RecruitmentVO rVO) {
		
		
		String cm_id = (String)session.getAttribute("M_ID");
		
		rVO.setCM_ID(cm_id);
		System.out.println(rVO.toString());
		
		String msg = "채용등록에 실패하였습니다, 다시 시도해주세요.";
		if( rVO.getR_ID() != null ) {
			//업데이트
			boolean updateFlag = coRecruitService.modifyRecruit(rVO);
			if( updateFlag ) {
				msg = "채용공고가 수정되었습니다.";
			}
			
		} else {
			boolean flag = coRecruitService.registRecruitment(rVO);
			if( flag ) {
				msg = "채용등록을 완료하였습니다.";
			}
		}
		model.addAttribute("msg", msg);
		
		return "forward:/company/coRecruitmentList.do";
	}
	
	@GetMapping("/company/coRecruitmentList.do")
	@RequestMapping(value="/company/coRecruitmentList.do", method={GET, POST})
	public String recruitmentList(HttpSession session, Model model) {
		String cm_id = (String)session.getAttribute("M_ID");
		List<RecruitListDomain> recruitList = coRecruitService.getRecruitList(cm_id);
		
		model.addAttribute("recruitList", recruitList);
		
		return "company/co_recruitment_list";
	}
	
}//class
