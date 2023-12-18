package kr.co.sist.user.recruitment.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.domain.MemberDomain;
import kr.co.sist.user.recruitment.domain.ApplyDomain;
import kr.co.sist.user.recruitment.domain.AreaDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentCareerDomain;
import kr.co.sist.user.recruitment.domain.DutyDomain;
import kr.co.sist.user.recruitment.domain.EducationDomain;
import kr.co.sist.user.recruitment.domain.EmployeeTypeDomain;
import kr.co.sist.user.recruitment.domain.IndustryDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.domain.ResumeDomain;
import kr.co.sist.user.recruitment.vo.ApplyVO;
import kr.co.sist.user.recruitment.vo.PageVO;
import kr.co.sist.user.review.domain.LikeDomain;
import kr.co.sist.user.review.vo.LikeVO;

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
	
	// 이력서 조회

	public List<ResumeDomain> selectResume(String id) throws PersistenceException{
		List<ResumeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectResume", id);
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 지원 목록 리스트 조회
	public ApplyDomain selectApply(ApplyVO aVO) throws PersistenceException{
		ApplyDomain ad = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		ad = ss.selectOne("kr.co.sist.user.recruitment.selectApply", aVO);
		mbh.closeHandler(ss);

		return ad;
	}
	
	// 지원하기 insert
	public boolean insertApply(ApplyVO aVO) throws PersistenceException{
		boolean flag = false;
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.insert("kr.co.sist.user.recruitment.insertApply", aVO);
		
		if(cnt == 1) {
			flag = true;
			ss.commit();
		}
		
		mbh.closeHandler(ss);

		return flag;
	}
	
	// 회원 이메일, 전화번호 조회
	public MemberDomain selectMember(String id) throws PersistenceException{
		MemberDomain md = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		md = ss.selectOne("kr.co.sist.user.recruitment.selectMember", id);
		
		mbh.closeHandler(ss);
		
		return md;
	}
	
	
	public static void main(String[] args) {
		PageVO pVO = new PageVO();
		UserRecruitmentDAO urDAO = new UserRecruitmentDAO();

	}
}
