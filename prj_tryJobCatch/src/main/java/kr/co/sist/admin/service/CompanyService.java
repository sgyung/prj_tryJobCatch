package kr.co.sist.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.CompanyDAO;
import kr.co.sist.admin.dao.UserDAO;
import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;

@Component
public class CompanyService {

	@Autowired
	private CompanyDAO cDAO;

	public List<CompanyDomain> printAllCompany(){
		List<CompanyDomain> companyList = null;
		
		try {
			companyList = cDAO.selectAllCompany();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return companyList;
	}
	
	public CompanyDomain printCompany(String cm_id){
		
		CompanyDomain companyInfo = null;
		try {
			companyInfo = cDAO.selectCompany(cm_id);
			
		} catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return companyInfo;
	}
	
	public void withdrawCompany(String cm_id) {
		
		cDAO.deleteCompany(cm_id);
	}
	
	public void modifyCompany(UserModifyVO umVO) {
		
		cDAO.updateCompany(umVO);
	}
	
}
