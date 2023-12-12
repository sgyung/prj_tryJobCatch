package kr.co.sist.user.review.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentCareerDomain;
import kr.co.sist.user.review.domain.BalanceDomain;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.domain.CultureDomain;
import kr.co.sist.user.review.domain.ReviewCareerDomain;
import kr.co.sist.user.review.domain.SalaryDomain;
import kr.co.sist.user.review.domain.StabilityDomain;
import kr.co.sist.user.review.domain.WelfareDomain;

@Component
public class ReviewDAO {
	
	public int selectReviewTotalCount(HashMap<String, Object> map) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.selectOne("kr.co.sist.user.review.reviewTotalCount",map);
		
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	public List<CorperationDomain> selectSearchReview(HashMap<String, Object> map) throws PersistenceException{
		List<CorperationDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.review.selectSearchReview",map);
		
		mbh.closeHandler(ss);
		
		
		return list;
	}
	
	public SalaryDomain selectSalaryNum(String id) throws PersistenceException{
		SalaryDomain sd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		sd = ss.selectOne("kr.co.sist.user.review.selectSalaryNum",id);
		
		mbh.closeHandler(ss);
		
		return sd;
	}
	
	public BalanceDomain selectBalanceNum(String id) throws PersistenceException{
		BalanceDomain bd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		bd = ss.selectOne("kr.co.sist.user.review.selectBalanceNum",id);
		
		mbh.closeHandler(ss);
		
		return bd;
	}
	
	public WelfareDomain selectWelfareNum(String id) throws PersistenceException{
		WelfareDomain wd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		wd = ss.selectOne("kr.co.sist.user.review.selectWelfareNum",id);
		
		mbh.closeHandler(ss);
		
		return wd;
	}
	
	public ReviewCareerDomain selectCareerNum(String id) throws PersistenceException{
		ReviewCareerDomain rcd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		rcd = ss.selectOne("kr.co.sist.user.review.selectReviewCareerNum",id);
		
		mbh.closeHandler(ss);
		
		return rcd;
	}
	
	public CultureDomain selectCultureNum(String id) throws PersistenceException{
		CultureDomain cd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cd = ss.selectOne("kr.co.sist.user.review.selectCultureNum",id);
		
		mbh.closeHandler(ss);
		
		return cd;
	}
	
	public StabilityDomain selectStabilityNum(String id) throws PersistenceException{
		StabilityDomain sd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		sd = ss.selectOne("kr.co.sist.user.review.selectStabilityNum",id);
		
		mbh.closeHandler(ss);
		
		return sd;
	}
	
	public CorperationDomain selectCorperation( String id ) throws PersistenceException{
		CorperationDomain cd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cd = ss.selectOne("kr.co.sist.user.review.selectCorperation",id);
		
		mbh.closeHandler(ss);
		
		return cd;
	}
	
	public List<CorperationDomain> selectRecruitment( String id ) throws PersistenceException{
		List<CorperationDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.review.selectRecruitment",id);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		
		ReviewDAO rDAO = new ReviewDAO();
		
//		System.out.println(rDAO.selectBalanceNum("cm_00003"));
//		System.out.println(rDAO.selectCareerNum("cm_00003"));
//		System.out.println(rDAO.selectCultureNum("cm_00003"));
//		System.out.println(rDAO.selectSalaryNum("cm_00003"));
//		System.out.println(rDAO.selectStabilityNum("cm_00003"));
//		System.out.println(rDAO.selectWelfareNum("cm_00003"));
	}
}
