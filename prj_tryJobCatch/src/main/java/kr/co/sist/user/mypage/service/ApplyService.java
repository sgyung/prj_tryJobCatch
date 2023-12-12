package kr.co.sist.user.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.mypage.dao.ApplyDAO;
import kr.co.sist.user.mypage.domain.ApplyDomain;

@Component
public class ApplyService {
	
	@Autowired
	private ApplyDAO applyDAO;
	
	public List<ApplyDomain> applyList(String mr_id){
		List<ApplyDomain> list = applyDAO.selectApplyList(mr_id);

		return list;
	}//applyList
	
	public boolean cancelApply(String app_id) {
		boolean resultFlag = false;
		int result = applyDAO.updateApplyState(app_id);
		if( result == 1) {
			resultFlag = true;
		}//end if
		
		return resultFlag;
	}
	
}//class
