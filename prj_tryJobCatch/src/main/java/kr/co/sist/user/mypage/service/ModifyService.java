package kr.co.sist.user.mypage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.common.DataEncrypt;
import kr.co.sist.user.login.dao.LoginDAO;
import kr.co.sist.user.login.domain.LoginDomain;
import kr.co.sist.user.login.vo.LoginVO;
import kr.co.sist.user.mypage.dao.ModifyDAO;
import kr.co.sist.user.mypage.dao.MypageDAO;
import kr.co.sist.user.mypage.domain.MemberDomain;
import kr.co.sist.user.mypage.vo.MemberInfoVO;
import kr.co.sist.user.mypage.vo.ModifyPassVO;

@Component
public class ModifyService {
	
	@Autowired(required = false)
	private ModifyDAO modifyDAO;
	
	public MemberDomain modifyInfoFrm(String m_id) {
		MemberDomain mbrDomain = new MemberDomain();
		mbrDomain = modifyDAO.selectMemberInfoFrm(m_id);		
		
		return mbrDomain;
	}//modifyInfo
	
	public String modifyMbrInfo(MemberInfoVO mbrInfoVO) {
		int result = modifyDAO.updateMemberInfo(mbrInfoVO);		
		String msg = "";
		if( result == 1) {
			msg = "회원정보가 수정 되었습니다.";
		} else {
			msg = "회원정보 수정 실패";
		}//end else
		
		return msg;
	}//modifyMbrInfo
	
	public boolean modifyMbrPass(ModifyPassVO modifyPassVO) {
		//암호화
		DataEncrypt dataEncrypt = DataEncrypt.getInstance();
		String hashedPass = dataEncrypt.sha256(modifyPassVO.getM_PW());
		String hashedNewPass = dataEncrypt.sha256(modifyPassVO.getNewPass());
		modifyPassVO.setM_PW(hashedPass);
		modifyPassVO.setNewPass(hashedNewPass);
		
		String result = modifyDAO.selectMemberPass(modifyPassVO);
		boolean resultFlag = false;
		if( result != null ) {
			modifyDAO.updateMemberPass(modifyPassVO);
			resultFlag = true;
		}//end if
		
		return resultFlag;
	}//modifyMbrPass
	
	
}//class
