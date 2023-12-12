package kr.co.sist.user.join.service;


import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.join.dao.JoinDAO;
import kr.co.sist.user.join.vo.CompanyJoinVO;
import kr.co.sist.user.join.vo.MemberJoinVO;

@Component
public class JoinService {
	@Autowired(required=false)
	JoinDAO joinDAO;
	
	public boolean memberJoin(MemberJoinVO mbrJoinVO) {
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		
		String hashedPw = dataEncrypt.sha256(mbrJoinVO.getM_PW());
		mbrJoinVO.setM_PW(hashedPw);
		boolean resultflag = false;
		
		int result = joinDAO.insertMember(mbrJoinVO);
		if( result == 1 ) {
			resultflag = true;
		}
		
		return resultflag;
	}//memberJoin
	
	
	public boolean companyJoin(CompanyJoinVO coJoinVO) {
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		
		String hashedPw = dataEncrypt.sha256(coJoinVO.getCM_PW());
		coJoinVO.setCM_PW(hashedPw);
		boolean resultflag = false;
		
		int result = joinDAO.insertCompany(coJoinVO);
		if( result == 1 ) {
			resultflag = true;
		}
		
		return resultflag;
	}//companyJoin
	
	public JSONObject mbrIdCheck(String id) {
		String userId = joinDAO.selectMbrId(id);
		JSONObject jsonObj = new JSONObject();
		
		if( userId == null ) {
			jsonObj.put("dupState", "Y");
		} else {
			jsonObj.put("dupState", "N");
		}//end else
		
		return jsonObj;
		
	}//idCheck
	
	public JSONObject coIdCheck(String id) {
		String userId = joinDAO.selectCoId(id);
		JSONObject jsonObj = new JSONObject();
		
		if( userId == null ) {
			jsonObj.put("dupState", "Y");
		} else {
			jsonObj.put("dupState", "N");
		}//end else
		
		return jsonObj;
		
	}//idCheck
	
	
}//class
