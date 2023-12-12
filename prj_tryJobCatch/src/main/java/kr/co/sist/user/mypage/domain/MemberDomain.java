package kr.co.sist.user.mypage.domain;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MemberDomain {
	
	private String
		M_ID, M_NAME, M_BDAY, M_GENDER,
		M_TEL, M_EMAIL, M_ZIP,M_ADDR, M_DETAIL_ADDR;
}//class
