package kr.co.sist.user.search.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.search.dao.SearchDAO;
import kr.co.sist.user.search.domain.SearchIdDomain;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.search.vo.NewPassVO;
import kr.co.sist.user.search.vo.SearchIdVO;
import kr.co.sist.user.search.vo.SearchPassVO;

@Component
public class SearchService {
	
	@Autowired(required = false)
	private SearchDAO sDAO;
	
	public SearchIdDomain searchUser(SearchIdVO searchIdVO) {
		
		SearchIdDomain userIdDomain = sDAO.selectUserId(searchIdVO);
		
		return userIdDomain;
		
	}//searchUser
	
	public String searchIsUser(SearchPassVO searchPassVO) {
		
		String userId = sDAO.selectUser(searchPassVO);
		
		return userId;
		
	}//searchUser
	
	public boolean resetPass(NewPassVO newPassVO) {
		
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
