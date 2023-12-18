package kr.co.sist.user.review.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentCareerDomain;
import kr.co.sist.user.recruitment.vo.PageVO;
import kr.co.sist.user.review.domain.BalanceDomain;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.domain.CultureDomain;
import kr.co.sist.user.review.domain.LikeDomain;
import kr.co.sist.user.review.domain.ReviewCareerDomain;
import kr.co.sist.user.review.domain.SalaryDomain;
import kr.co.sist.user.review.domain.StabilityDomain;
import kr.co.sist.user.review.domain.WelfareDomain;
import kr.co.sist.user.review.vo.BalanceVO;
import kr.co.sist.user.review.vo.CultureVO;
import kr.co.sist.user.review.vo.LikeVO;
import kr.co.sist.user.review.vo.ReviewCareerVO;
import kr.co.sist.user.review.vo.ReviewPageVO;
import kr.co.sist.user.review.vo.SalaryVO;
import kr.co.sist.user.review.vo.StabilityVO;
import kr.co.sist.user.review.vo.WelfareVO;

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
	
	public List<CorperationDomain> selectFormerCompany( String id ) throws PersistenceException{
		List<CorperationDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.review.selectFormerCompany",id);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<CorperationDomain> selectMyReviewList( String id ) throws PersistenceException{
		List<CorperationDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.user.review.selectMyReviewList",id);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// insert트랜잭션
	public boolean insertTransaction( ReviewPageVO rpVO ) throws PersistenceException{
		boolean flag = false;
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		try {
			
			cnt += ss.insert("kr.co.sist.user.review.insertReview", rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertSalary",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertBalance",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertCulture",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertWelfare",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertStability",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertCareer",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertSalaryEval",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertBalanceEval",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertCultureEval",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertWelfareEval",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertStabilityEval",rpVO);
			cnt += ss.insert("kr.co.sist.user.review.insertCareerEval",rpVO);
			
			if(cnt == 13) {
				ss.commit();
				flag = true;
			}else {
				ss.rollback();
			}
		
		}finally {
			mbh.closeHandler(ss);
		}
		return flag;
	}
	
	// 리뷰 수정 - update트랜잭션
	public boolean updateTransaction( ReviewPageVO rpVO ) throws PersistenceException{
		boolean flag = false;
		int cnt = 0;
		SalaryVO sVO = new SalaryVO();
		BalanceVO bVO = new BalanceVO();
		CultureVO cVO = new CultureVO();
		WelfareVO wVO = new WelfareVO();
		StabilityVO sbVO = new StabilityVO();
		ReviewCareerVO rcVO = new ReviewCareerVO();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		try {
			
			if(rpVO.getSalary().length > 0) {
				for(int i = 0; i < rpVO.getSalary().length; i++) {
					if(i == 0) {
						sVO.setAs_sal(rpVO.getSalary()[i]);
					}else if(i == 1) {
						sVO.setAs_first_sal(rpVO.getSalary()[i]);
					}else if(i == 2) {
						sVO.setAs_retirement_pay(rpVO.getSalary()[i]);
					}else if(i == 3) {
						sVO.setAs_bonus(rpVO.getSalary()[i]);
					}
				}
				sVO.setAs_id(rpVO.getAs_id());
			}
			
			if(rpVO.getBalance().length > 0) {
				for(int i = 0; i < rpVO.getBalance().length; i++) {
					if(i == 0) {
						bVO.setWlb_provide(rpVO.getBalance()[i]);
					}else if(i == 1) {
						bVO.setWlb_gohome(rpVO.getBalance()[i]);
					}else if(i == 2) {
						bVO.setWlb_break(rpVO.getBalance()[i]);
					}
				}
				bVO.setWlb_id(rpVO.getWlb_id());
			}
			
			if(rpVO.getCulture().length > 0) {
				for(int i = 0; i < rpVO.getCulture().length; i++) {
					if(i == 0) {
						cVO.setOc_team(rpVO.getCulture()[i]);
					}else if(i == 1) {
						cVO.setOc_clothes(rpVO.getCulture()[i]);
					}else if(i == 2) {
						cVO.setOc_meeting(rpVO.getCulture()[i]);
					}else if(i == 3) {
						cVO.setOc_work(rpVO.getCulture()[i]);
					}else if(i == 4) {
						cVO.setOc_system(rpVO.getCulture()[i]);
					}else if(i == 5) {
						cVO.setOc_culture(rpVO.getCulture()[i]);
					}
				}
				cVO.setOc_id(rpVO.getOc_id());
			}
			
			if(rpVO.getWelfare().length > 0) {
				for(int i = 0; i < rpVO.getWelfare().length; i++) {
					if(i == 0) {
						wVO.setW_study(rpVO.getWelfare()[i]);
					}else if(i == 1) {
						wVO.setW_spply(rpVO.getWelfare()[i]);
					}else if(i == 2) {
						wVO.setW_holiday_bonus(rpVO.getWelfare()[i]);
					}else if(i == 3) {
						wVO.setW_vacation_bonus(rpVO.getWelfare()[i]);
					}else if(i == 4) {
						wVO.setW_stock_option(rpVO.getWelfare()[i]);
					}
				}
				wVO.setW_id(rpVO.getW_id());
			}
			
			if(rpVO.getStability().length > 0) {
				for(int i = 0; i < rpVO.getStability().length; i++) {
					if(i == 0) {
						sbVO.setJs_grow_co(rpVO.getStability()[i]);
					}else if(i == 1) {
						sbVO.setJs_mgmt_vision(rpVO.getStability()[i]);
					}else if(i == 2) {
						sbVO.setJs_best(rpVO.getStability()[i]);
					}
				}
				sbVO.setJs_id(rpVO.getJs_id());
			}
			
			if(rpVO.getCareer().length > 0) {
				for(int i = 0; i < rpVO.getCareer().length; i++) {
					if(i == 0) {
						rcVO.setCg_fair_evaluation(rpVO.getCareer()[i]);
					}else if(i == 1) {
						rcVO.setCg(rpVO.getCareer()[i]);
					}else if(i == 2) {
						rcVO.setCg_capable_colleague(rpVO.getCareer()[i]);
					}
				}
				rcVO.setCg_id(rpVO.getCg_id());
			}
			
			cnt += ss.update("kr.co.sist.user.review.updateSalary",sVO);
			cnt += ss.update("kr.co.sist.user.review.updateBalance",bVO);
			cnt += ss.update("kr.co.sist.user.review.updateCulture",cVO);
			cnt += ss.update("kr.co.sist.user.review.updateWelfare",wVO);
			cnt += ss.update("kr.co.sist.user.review.updateStability",sbVO);
			cnt += ss.update("kr.co.sist.user.review.updateReviewCareer",rcVO);
			
			
			if(cnt == 6) {
				ss.commit();
				flag = true;
			}else {
				ss.rollback();
			}
		
		}finally {
			mbh.closeHandler(ss);
		}
		return flag;
	}
	
	// 체크된 연봉 키워드 조회
	public SalaryDomain selectCheckSalary( String id ) throws PersistenceException {
		SalaryDomain sd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		sd = ss.selectOne("kr.co.sist.user.review.selectCheckSalary",id);
		
		
		mbh.closeHandler(ss);
		
		return sd; 
	}
	
	// 체크된 워라벨 키워드 조회
	public BalanceDomain selectCheckBalance( String id ) throws PersistenceException {
		BalanceDomain bd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		bd = ss.selectOne("kr.co.sist.user.review.selectCheckBalance",id);
		
		mbh.closeHandler(ss);
		
		return bd; 
	}
	
	public CultureDomain selectCheckCulture( String id ) throws PersistenceException {
		CultureDomain cd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cd = ss.selectOne("kr.co.sist.user.review.selectCheckCulture",id);
		
		mbh.closeHandler(ss);
		
		return cd; 
	}
	
	public WelfareDomain selectCheckWelfare( String id ) throws PersistenceException{
		WelfareDomain wd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		wd = ss.selectOne("kr.co.sist.user.review.selectCheckWelfare",id);
		
		mbh.closeHandler(ss);
		
		return wd; 
	}
	
	public StabilityDomain selectCheckStability( String id ) throws PersistenceException {
		StabilityDomain sd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		sd = ss.selectOne("kr.co.sist.user.review.selectCheckStability",id);
		
		mbh.closeHandler(ss);
		
		return sd; 
	}
	
	public ReviewCareerDomain selectCheckCareer( String id ) throws PersistenceException {
		ReviewCareerDomain rcd = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		rcd = ss.selectOne("kr.co.sist.user.review.selectCheckCareer",id);
		
		mbh.closeHandler(ss);
		
		return rcd; 
	} 
	
	// 관심기업 조회
		public LikeDomain selectLikeCompany(LikeVO lVO) throws PersistenceException{
			LikeDomain ld = null;
			
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			
			SqlSession ss = mbh.getMyBatisHandler(false);
			
			ld = ss.selectOne("kr.co.sist.user.review.selectLikeCompany", lVO);
			
			mbh.closeHandler(ss);
			
			return ld;
			
		}
		
		// 관심기업 insert
		public int insertLike(LikeVO lVO) throws PersistenceException{
			int cnt = 0;
			
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			
			SqlSession ss = mbh.getMyBatisHandler(false);
			
			cnt = ss.insert("kr.co.sist.user.review.insertLikeCompany", lVO);
			
			ss.commit();
			
			mbh.closeHandler(ss);
			
			return cnt;
		}
		
		// 관심기업 delete
		public int deleteLike(LikeVO lVO) throws PersistenceException{
			int cnt = 0;
			
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			
			SqlSession ss = mbh.getMyBatisHandler(false);
			
			cnt = ss.delete("kr.co.sist.user.review.deleteLikeCompany", lVO);
			
			ss.commit();
			
			mbh.closeHandler(ss);
			
			return cnt; 
		}
		
		// 관심기업 순위 조회
		public List<LikeDomain> selectLikeRank() throws PersistenceException{
			List<LikeDomain> list = null;
			
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			
			SqlSession ss = mbh.getMyBatisHandler(false);
			
			list = ss.selectList("kr.co.sist.user.review.selectLikeRank");
			
			mbh.closeHandler(ss);
			
			return list;
		}
	
	
	public static void main(String[] args) {
		
		ReviewDAO rDAO = new ReviewDAO();
		ReviewPageVO rpVO = new ReviewPageVO();
		rpVO.setRv_id("rv_00047");
		
		System.out.println(rDAO.selectLikeRank());
	}
}
