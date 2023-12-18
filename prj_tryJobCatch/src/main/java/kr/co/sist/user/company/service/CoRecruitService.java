package kr.co.sist.user.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.company.dao.CoRecruitDAO;
import kr.co.sist.user.company.domain.CareerDomain;
import kr.co.sist.user.company.domain.DutyDomain;
import kr.co.sist.user.company.domain.EducationDomain;
import kr.co.sist.user.company.domain.EmpTypeDomain;
import kr.co.sist.user.company.domain.IndustryDomain;
import kr.co.sist.user.company.domain.RecruitDetailDomain;
import kr.co.sist.user.company.domain.RecruitListDomain;
import kr.co.sist.user.company.domain.WorkAreaDomain;
import kr.co.sist.user.company.vo.RecruitmentVO;

@Component
public class CoRecruitService {
	
	@Autowired
	private CoRecruitDAO coRecruitDAO;
	
	public List<DutyDomain> getDutyList() {
		
		List<DutyDomain> list = coRecruitDAO.selectDuty();
		
		return list;
	}
	
	public List<IndustryDomain> getIndustryList() {
		
		List<IndustryDomain>  list = coRecruitDAO.selectIndustry();
		
		return list;
	}
	
	public List<CareerDomain> getCareerList() {
		
		List<CareerDomain>  list = coRecruitDAO.selectCareer();
		
		return list;
	}
	
	public List<EducationDomain> getEducationList() {
		
		List<EducationDomain>  list = coRecruitDAO.selectEducation();
		
		return list;
	}
	
	public List<EmpTypeDomain> getEmpTypeList() {
		
		List<EmpTypeDomain>  list = coRecruitDAO.selectEmpType();
		
		return list;
	}
	
	public List<WorkAreaDomain> getWorkAreaList() {
		
		List<WorkAreaDomain>  list = coRecruitDAO.selectWorkArea();
		
		return list;
	}
	
	public boolean registRecruitment(RecruitmentVO rVO) {
		boolean flag = coRecruitDAO.insertRecruitment(rVO);
		
		return flag;
	}
	
	public List<RecruitListDomain> getRecruitList(String cm_id){
		List<RecruitListDomain> list = coRecruitDAO.selectRecruitList(cm_id);
		return list;
	}
	
	public RecruitDetailDomain getRecruitDetail(String r_id) {
		RecruitDetailDomain rdDomain = coRecruitDAO.selectRecruitDetail(r_id);
		List<String> skillList = coRecruitDAO.selectRecruitSkill(r_id);
		List<String> fieldList = coRecruitDAO.selectRecruitField(r_id);
		
		rdDomain.setRS_NAME(skillList);
		rdDomain.setRF_FIELD(fieldList);
		
		return rdDomain;
	}
	
	public  boolean modifyRecruit(RecruitmentVO rVO) {
		boolean flag = coRecruitDAO.updateRecruit(rVO);
		
		return flag;
	}
}
