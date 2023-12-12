package kr.co.sist.user.mypage.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.mypage.domain.MemberDomain;
import kr.co.sist.user.mypage.vo.MemberInfoVO;
import kr.co.sist.user.mypage.vo.ModifyPassVO;

@Component
public class ModifyDAO {
	
	public MemberDomain selectMemberInfoFrm(String m_id) throws PersistenceException{
		MemberDomain mbrDomain = new MemberDomain();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		mbrDomain = ss.selectOne("kr.co.sist.mypage.selectMemberInfo", m_id);
		
		mbh.closeHandler(ss);
		
		return mbrDomain;
	}//selectMemberInfo
	
	public int updateMemberInfo(MemberInfoVO mbrInfoVO) {
		MemberDomain mbrDomain = new MemberDomain();
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int result = ss.update("kr.co.sist.mypage.updateMemberInfo", mbrInfoVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//updateMemberInfo
	
	public String selectMemberPass(ModifyPassVO modifyPassVO) {
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String result = ss.selectOne("kr.co.sist.mypage.selectMemberPass", modifyPassVO);
		mbh.closeHandler(ss);
		
		return result;
	}//selectMemberPass
	
	public int updateMemberPass(ModifyPassVO modifyPassVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int result = ss.update("kr.co.sist.mypage.updateMemberPass", modifyPassVO);
		ss.commit();
		mbh.closeHandler(ss);
		
		return result;
	}//updateMemberPass

}//class
