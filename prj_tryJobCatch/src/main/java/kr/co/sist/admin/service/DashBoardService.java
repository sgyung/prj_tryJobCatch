package kr.co.sist.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.CompanyDAO;
import kr.co.sist.admin.dao.DashBoardDAO;
import kr.co.sist.admin.dao.AdminNoticeDAO;
import kr.co.sist.admin.dao.UserDAO;
import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.NoticeDomain;
import kr.co.sist.admin.domain.QnADomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.NoticeInsertVO;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;

@Component
public class DashBoardService {

	@Autowired
	private DashBoardDAO dbDAO;

	public List<NoticeDomain> printNewNotice(){
		List<NoticeDomain> noticeList = null;
		
		try {
			noticeList = dbDAO.selectNewNotice();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return noticeList;
	}
	
	public List<QnADomain> printNewQnA(){
		List<QnADomain> qnaList = null;
		
		try {
			qnaList = dbDAO.selectNewQnA();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return qnaList;
	}
	
	public List<UserDomain> printNewUser(){
		List<UserDomain> userList = null;
		
		try {
			userList = dbDAO.selectNewUser();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return userList;
	}
	
	public List<CompanyDomain> printNewCompany(){
		List<CompanyDomain> companyList = null;
		
		try {
			companyList = dbDAO.selectNewCompany();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return companyList;
	}
	
	
}
