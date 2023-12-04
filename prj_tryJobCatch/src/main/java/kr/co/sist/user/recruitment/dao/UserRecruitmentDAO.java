package kr.co.sist.user.recruitment.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.DutyDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.vo.PageVO;

public class UserRecruitmentDAO {

	private static UserRecruitmentDAO urDAO;
	private String configPath;
	
	private UserRecruitmentDAO () {
		configPath="kr/co/sist/dao/mybatis-config.xml";
	}
	
	public static UserRecruitmentDAO getInstance() {
		if(urDAO == null) {
			urDAO = new UserRecruitmentDAO();
		}
		return urDAO;
	}
	
	public List<RecruitmentDomain> selectSearchRecruitment(PageVO pVO) throws PersistenceException{
		List<RecruitmentDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectSearchRecruitment",pVO);
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public RecruitmentDomain selectOneRecruitment(String id) throws PersistenceException{
		RecruitmentDomain red = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		red = ss.selectOne("kr.co.sist.user.recruitment.selectOneRecruitment",id);
		mbh.closeHandler(ss);
		
		return red;
	}
	
	public List<DutyDomain> selectAllDuty() throws PersistenceException{
		List<DutyDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(configPath, false);
		
		list = ss.selectList("kr.co.sist.user.recruitment.selectAllDuty");
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		PageVO pVO = new PageVO();
		pVO.setStartNum(1);
		pVO.setEndNum(5);
//		pVO.setField("cm_co_name");
//		pVO.setKeyword("»ï");
		
//		System.out.println(UserRecruitmentDAO.getInstance().selectOneRecruitment("r_00001").toString());
		System.out.println(UserRecruitmentDAO.getInstance().selectSearchRecruitment(pVO).toString());
//		System.out.println(UserRecruitmentDAO.getInstance().selectAllDuty().toString());
		
	}
}
