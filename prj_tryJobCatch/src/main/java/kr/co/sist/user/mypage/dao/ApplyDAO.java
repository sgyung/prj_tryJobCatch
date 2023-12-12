package kr.co.sist.user.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.domain.ApplyDomain;
import kr.co.sist.user.mypage.domain.MemberDomain;

@Component
public class ApplyDAO {

	public List<ApplyDomain> selectApplyList(String m_id){
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<ApplyDomain> list = ss.selectList("kr.co.sist.apply.selectApplyList", m_id);
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectApplyList
	
	public int updateApplyState(String app_id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int result = ss.update("kr.co.sist.apply.updateApplyState", app_id);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}
	
}//class
