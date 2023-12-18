package kr.co.sist.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.CompanyDAO;
import kr.co.sist.admin.dao.NoticeDAO;
import kr.co.sist.admin.dao.UserDAO;
import kr.co.sist.admin.domain.CompanyDomain;
import kr.co.sist.admin.domain.NoticeDomain;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.NoticeInsertVO;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;

@Component
public class NoticeService {

	@Autowired
	private NoticeDAO nDAO;

	public List<NoticeDomain> printAllNotice(){
		List<NoticeDomain> noticeList = null;
		
		try {
			noticeList = nDAO.selectAllNotice();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return noticeList;
	}
	
	public NoticeDomain printNotice(String n_id){
		
		NoticeDomain noticeInfo = null;
		try {
			noticeInfo = nDAO.selectNotice(n_id);
			
		} catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return noticeInfo;
	}
	
	public void insertNotice(NoticeInsertVO niVO) {
		
		nDAO.insertNotice(niVO);
	}
	
	public void deleteNotice(String n_id) {
		
		nDAO.deleteNotice(n_id);
	}
	
	public void modifyNotice(NoticeDomain nd) {
		
		nDAO.updateNotice(nd);
	}
	
}
