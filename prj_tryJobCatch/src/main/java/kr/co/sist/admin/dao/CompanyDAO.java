package kr.co.sist.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;
import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;

@Component
public class CompanyDAO {
	private static CompanyDAO uDAO;
	
	public CompanyDAO() {
	}
	
	public static CompanyDAO getInstance() {
		if(uDAO == null) {
			uDAO = new CompanyDAO();
		}
		return uDAO;
	}
	
//	public int userTotalCount(PageVO pVO) throws PersistenceException{
//		int cnt = 0;
//		
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		
//		SqlSession ss = mbh.getMyBatisHandler(false);
//		
//		cnt = ss.selectOne("admin.user.userTotalCount",pVO);
//		mbh.closeHandler(ss);
//		
//		return cnt;
//	}
//
//	public List<CompanyDomain> selectSearchUser(PageVO pVO) throws PersistenceException{
//		List<CompanyDomain> list = null;
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		SqlSession ss = mbh.getMyBatisHandler(false);
//		
//		list = ss.selectList("admin.user.selectSearchUser",pVO);
//		
//		mbh.closeHandler(ss);
//		
//		return list;
//	}
//	
	
	public List<CompanyDomain> selectAllCompany() throws PersistenceException {
		List<CompanyDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("admin.company.companyList");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public CompanyDomain selectCompany(String cm_id) throws PersistenceException {
		CompanyDomain cd = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cd = ss.selectOne("admin.company.companyInfo", cm_id);
		
		mbh.closeHandler(ss);
		
		return cd;
	}
	
	public void deleteCompany(String cm_id) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.company.companyDelete", cm_id);
		
		mbh.closeHandler(ss);
	}
	
	public void updateCompany(UserModifyVO umVO) throws PersistenceException {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		ss.update("admin.company.companyModify", umVO);
		
		mbh.closeHandler(ss);
	}
	
}
