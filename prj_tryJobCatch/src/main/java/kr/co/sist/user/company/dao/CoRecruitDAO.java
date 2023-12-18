package kr.co.sist.user.company.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.company.domain.ApplyMbrDomain;
import kr.co.sist.user.company.domain.CareerDomain;
import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;
import kr.co.sist.user.company.domain.DutyDomain;
import kr.co.sist.user.company.domain.EducationDomain;
import kr.co.sist.user.company.domain.EmpTypeDomain;
import kr.co.sist.user.company.domain.IndustryDomain;
import kr.co.sist.user.company.domain.RecruitDetailDomain;
import kr.co.sist.user.company.domain.RecruitListDomain;
import kr.co.sist.user.company.domain.WorkAreaDomain;
import kr.co.sist.user.company.vo.RecruitmentVO;

@Component
public class CoRecruitDAO {
	
	public List<DutyDomain> selectDuty() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<DutyDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectDuty");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public List<IndustryDomain> selectIndustry() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IndustryDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectIndustry");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public List<CareerDomain> selectCareer() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CareerDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectCareer");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public List<EducationDomain> selectEducation() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<EducationDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectEducation");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public List<EmpTypeDomain> selectEmpType() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<EmpTypeDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectEmpType");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public List<WorkAreaDomain> selectWorkArea() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<WorkAreaDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectWorkArea");
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public boolean insertRecruitment(RecruitmentVO rVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		boolean flag = false;
		
		try {
		int resultCnt = 0;
		int compareCnt = 0;
		
		//채용
		resultCnt += ss.insert("kr.co.sist.coRecruit.insertRecruit", rVO);
		compareCnt += 1;
		//스킬
		resultCnt += ss.insert("kr.co.sist.coRecruit.insertRecruitSkill", rVO);
		compareCnt += rVO.getRS_NAME().length;
		//모집분야
		resultCnt += ss.insert("kr.co.sist.coRecruit.insertRecruitField", rVO);
		compareCnt += rVO.getRF_FIELD().length;
		
		System.out.println(resultCnt);
		System.out.println(compareCnt);
		
		if( resultCnt == compareCnt ) {
			ss.commit();
			flag = true;
		} else {
			ss.rollback();
		}
		} finally {
			mbh.closeHandler(ss);
		}
		
		return flag;
	}
	
	public List<RecruitListDomain> selectRecruitList(String cm_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<RecruitListDomain> resultList = ss.selectList("kr.co.sist.coRecruit.selectRecruitList", cm_id);
		
		mbh.closeHandler(ss);
		
		return resultList;
	}
	
	public RecruitDetailDomain selectRecruitDetail(String r_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		RecruitDetailDomain rdDomain = new RecruitDetailDomain();
		
		rdDomain = ss.selectOne("kr.co.sist.coRecruit.selectRecruitDetail", r_id);
		
		mbh.closeHandler(ss);
		
		return rdDomain;
	}
	
	public List<String> selectRecruitSkill(String r_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<String> rs_name = ss.selectList("kr.co.sist.coRecruit.selectRecruitSkill", r_id);
		
		mbh.closeHandler(ss);
		
		return rs_name;
		
	}
	
	public List<String> selectRecruitField(String r_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<String> rf_field = ss.selectList("kr.co.sist.coRecruit.selectRecruitField", r_id);
		
		mbh.closeHandler(ss);
		
		return rf_field;
		
	}
	
	public boolean updateRecruit(RecruitmentVO rVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int compareCnt = 0;
		int resultCnt = 0;
		boolean resultFlag = false;
		
		try {
		
		resultCnt += ss.delete("kr.co.sist.coRecruit.deleteRecruitField", rVO.getR_ID());
		resultCnt += ss.delete("kr.co.sist.coRecruit.deleteRecruitSkill", rVO.getR_ID());
		resultCnt += ss.update("kr.co.sist.coRecruit.updateRecruit", rVO);
		
		resultCnt += ss.insert("kr.co.sist.coRecruit.insertRecruitSkill", rVO);
		resultCnt += ss.insert("kr.co.sist.coRecruit.insertRecruitField", rVO);
		compareCnt += rVO.getRS_NAME().length;
		compareCnt += rVO.getRF_FIELD().length;
		
		compareCnt += rVO.getSkillDeleteCnt();
		compareCnt += rVO.getFieldDeleteCnt();
		compareCnt += 1;
		
		
		
		if( resultCnt == compareCnt) {
			resultFlag = true;
			ss.commit();
		} else {
			ss.rollback();
		}
		} finally {
			mbh.closeHandler(ss);
		}
		
		return resultFlag;
	}
	
	public int updateRegistState(String r_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.update("kr.co.sist.coRecruit.updateRegistState", r_id);
		
		if( result == 1 ) {
			ss.commit();
		} else {
			ss.rollback();
		}//end else
		
		mbh.closeHandler(ss);
		
		return result;
	}//updateRegistState
	
	public List<ApplyMbrDomain> selectApplyMbrList(String r_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<ApplyMbrDomain> list = ss.selectList("kr.co.sist.coRecruit.selectApllyMbrList", r_id);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public int updateRecruitState (String a_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.update("kr.co.sist.coRecruit.updateRecruitState", a_id);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}

}//class
