package kr.co.sist.user.company.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.user.company.dao.CoRecruitDAO;
import kr.co.sist.user.company.domain.ApplyMbrDomain;
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
import kr.co.sist.user.mypage.domain.ResumeMbrInfoDomain;
import kr.co.sist.user.mypage.service.ResumeService;
import oracle.jdbc.proxy.annotation.Post;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class CoRecruitController {
	
	@Autowired
	private CoRecruitService coRecruitService;
	@Autowired(required = false)
	private ResumeService resumeService;
	
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
		if( !rVO.getR_ID().isEmpty() ) {
			//업데이트
			System.out.println("====updateflag====" + rVO.getR_ID());
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
	
	
	@ResponseBody
	@PostMapping("/company/coRecruitmentRemove.do")
	public String recruitmentRemove(@RequestParam(value="r_id")String r_id) {
		boolean resultFlag = coRecruitService.removeRecruitment(r_id);
		String msg = "채용공고 삭제에 실패하였습니다. 다시 시도해주세요.";
		if( resultFlag ) {
			msg = "채용공고를 삭제하였습니다.";
		}//end if
		
		JSONObject json = new JSONObject();
		json.put("msg", msg);
		
		return json.toString();
	}
	
	@RequestMapping(value="/company/coApplyList.do", method= {GET, POST})
	public String coApplyList(@RequestParam(value="r_id")String r_id, Model model) {
		
		System.out.println("---------------------" + r_id);
		List<ApplyMbrDomain> applyMbrList =  coRecruitService.getApplyMbrList(r_id);
		
		model.addAttribute("applyMbrList", applyMbrList);
		
		return "company/co_apply_list";
	}
	
	@GetMapping("/company/applyResumeDetail.do")
	public String applyResumeDetail(@RequestParam(value="mr_id")String mr_id,
									@RequestParam(value="a_id")String a_id,
									@RequestParam(value="m_id")String m_id,
									@RequestParam(value="r_id")String r_id,
									Model model
									) {
		
		
		
		ResumeMbrInfoDomain resumeMbrInfoDomain = resumeService.getMbrInfo(m_id);
		JSONObject resume = resumeService.getResume(mr_id);
		model.addAttribute("mbrInfo", resumeMbrInfoDomain);
		model.addAttribute("resume", resume);
		model.addAttribute("a_id", a_id);
		model.addAttribute("r_id", r_id);
		
		
		return "company/resume_detail";
	}
	
	@GetMapping("/company/hire.do")
	public String hire(@RequestParam(value="a_id")String a_id,
						@RequestParam(value="r_id")String r_id, Model model) {
		
		boolean resultFlag = coRecruitService.changeRecruitState(a_id);
		String msg = "채용하기에 실패하였습니다. 다시 시도해주세요.";
				
		if( resultFlag ) {
			msg = "채용완료 되었습니다.";
		}
		
		model.addAttribute("msg", msg);
		
		return "forward:/company/coApplyList.do";
	}
}//class
