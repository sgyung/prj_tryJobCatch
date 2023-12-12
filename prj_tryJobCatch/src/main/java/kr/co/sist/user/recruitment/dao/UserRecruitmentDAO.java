package kr.co.sist.user.recruitment.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.AreaDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentCareerDomain;
import kr.co.sist.user.recruitment.domain.DutyDomain;
import kr.co.sist.user.recruitment.domain.EducationDomain;
import kr.co.sist.user.recruitment.domain.EmployeeTypeDomain;
import kr.co.sist.user.recruitment.domain.IndustryDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.vo.PageVO;

@Component
public class UserRecruitmentDAO {
	
	public int recruitmentTotalCount(PageVO pVO) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.selectOne("kr.co.sist.user.recruitment.recruitmentTotalCount",pVO);
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public List<RecruitmentDomain> selectSearchRecruitment(PageVO pVO) throws PersistenceException{
		List<RecruitmentDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectSearchRecruitment",pVO);
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public RecruitmentDomain selectOneRecruitment(String id) throws PersistenceException{
		RecruitmentDomain red = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		red = ss.selectOne("kr.co.sist.user.recruitment.selectOneRecruitment",id);
		mbh.closeHandler(ss);
		
		return red;
	}
	
	public List<DutyDomain> selectAllDuty() throws PersistenceException{
		List<DutyDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllDuty");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<AreaDomain> selectAllArea() throws PersistenceException{
		List<AreaDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllArea");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<RecruitmentCareerDomain> selectAllCareer() throws PersistenceException{
		List<RecruitmentCareerDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllCareer");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<IndustryDomain> selectAllIndustry() throws PersistenceException{
		List<IndustryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllIndustry");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<EducationDomain> selectAllEducation() throws PersistenceException{
		List<EducationDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllEducation");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<EmployeeTypeDomain> selectAllEmploymentType() throws PersistenceException{
		List<EmployeeTypeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllEmploymentType");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		PageVO pVO = new PageVO();
		UserRecruitmentDAO urDAO = new UserRecruitmentDAO();
		pVO.setStartNum(1);
		pVO.setEndNum(10);
//		pVO.setStartNum(1);
//		pVO.setEndNum(5);
//		pVO.setCm_co_type("´ë±â¾÷");
//		pVO.setField("cm_co_name");
//		pVO.setKeyword("»ï");
		
//		System.out.println(UserRecruitmentDAO.getInstance().selectOneRecruitment("r_00001").toString());
		System.out.println(urDAO.selectSearchRecruitment(pVO));
//		System.out.println(UserRecruitmentDAO.getInstance().recruitmentTotalCount(pVO));
//		System.out.println(urDAO.selectAllArea().toString());
		
	}
}
