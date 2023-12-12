package kr.co.sist.user.join.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.join.vo.CompanyJoinVO;
import kr.co.sist.user.join.vo.MemberJoinVO;

@Component
public class JoinDAO {
	
	public int insertMember(MemberJoinVO mbrJoinVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.insert("kr.co.sist.join.insertMember", mbrJoinVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//insertMember
	
	public int insertCompany(CompanyJoinVO coJoinVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int result = ss.insert("kr.co.sist.join.insertCompany", coJoinVO);
		
		ss.commit();
		
		mbh.closeHandler(ss);
		
		return result;
	}//insertCompany
	
	public String selectMbrId(String id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String result = ss.selectOne("kr.co.sist.join.selectMbrId", id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectMbrId
	
	public String selectCoId(String id) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		String result = ss.selectOne("kr.co.sist.join.selectCoId", id);
		
		mbh.closeHandler(ss);
		
		return result;
	}//selectId
}//class
