package kr.co.sist.user.search.service;


import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.search.dao.SearchDAO;
import kr.co.sist.user.search.domain.SearchIdDomain;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.search.vo.NewPassVO;
import kr.co.sist.user.search.vo.SearchIdVO;
import kr.co.sist.user.search.vo.SearchPassVO;

public class SearchService {
	
	public SearchIdDomain searchUser(SearchIdVO searchIdVO) {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		SearchIdDomain userIdDomain = sDAO.selectUserId(searchIdVO);
		
		return userIdDomain;
		
	}//searchUser
	
	public String searchIsUser(SearchPassVO searchPassVO) {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		String userId = sDAO.selectUser(searchPassVO);
		
		
		return userId;
		
	}//searchUser
	
	public boolean resetPass(NewPassVO newPassVO) {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		boolean resultFlag = false;
		
		String hashedPw = dataEncrypt.sha256(newPassVO.getM_PASS());
		newPassVO.setM_PASS(hashedPw);
		int result = sDAO.updateNewPass(newPassVO);
		
		if( result == 1 ) {
			resultFlag = true;
		}//end if
		
		return resultFlag;
		
	}//searchUser
	
	
}//class
