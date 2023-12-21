package kr.co.sist.user.company.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;
import kr.co.sist.user.mypage.vo.UploadImgVO;

@Component
public class CoMypageDAO {
	
	public int selectRecruitmentCnt(String cm_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int resultCnt = ss.selectOne("kr.co.sist.coMypage.selectRecruitmentCnt", cm_id);
		
		mbh.closeHandler(ss);
		
		return resultCnt;
	}
	
	public int selectAllApplyCnt(String cm_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int resultCnt = ss.selectOne("kr.co.sist.coMypage.selectAllApplyCnt", cm_id);
		
		mbh.closeHandler(ss);
		
		return resultCnt;
	}
	
	public CoLatestRecruitDomain selectLatestRecruitment(String cm_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		CoLatestRecruitDomain result = ss.selectOne("kr.co.sist.coMypage.selectLatestRecruitment", cm_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}
	
	public CoProfileDomain selectCoProfile(String cm_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		CoProfileDomain result = ss.selectOne("kr.co.sist.coMypage.selectCoProfile", cm_id);
		
		mbh.closeHandler(ss);
		
		return result;
	}
	
	public int updateCoImg(UploadImgVO uploadImgVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt = ss.update("kr.co.sist.coMypage.updateCoImg", uploadImgVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//updateImg
	
	public String selectImg(String id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String img = ss.selectOne("kr.co.sist.coMypage.selectImg", id);
		
		mbh.closeHandler(ss);
		
		return img;
	}//updateImg

}//class
