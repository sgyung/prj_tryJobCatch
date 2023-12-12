package kr.co.sist.user.main.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;

import kr.co.sist.user.main.dao.UserMainDAO;
import kr.co.sist.user.main.domain.MainDomain;
import kr.co.sist.user.main.domain.MainNoticeDomain;

public class MainService {

	private static MainService ms;
	
	private MainService() {
		
	}
	
	public static MainService getInstance() {
		if(ms == null) {
			ms = new MainService();
		}
		return ms;
	}
	
	public List<MainDomain> recruitmentList(){
		List<MainDomain> recruitmentList = null;
		
		UserMainDAO umDAO = UserMainDAO.getInstance();
		try {
			recruitmentList = umDAO.selectAllRecruitment();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return recruitmentList;
	}
	
	public List<MainDomain> recruitmentBanner(){
		List<MainDomain> recruitmentBanner = null;
		
		UserMainDAO umDAO = UserMainDAO.getInstance();
		try {
			recruitmentBanner = umDAO.selectRecruitmentBanner();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return recruitmentBanner;
	}
	
	public List<MainNoticeDomain> noticeList(){
		List<MainNoticeDomain> noticeList = null;
	
		UserMainDAO umDAO = UserMainDAO.getInstance();
		try {
			noticeList = umDAO.selectAllNotice();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return noticeList;
	}
	
}
