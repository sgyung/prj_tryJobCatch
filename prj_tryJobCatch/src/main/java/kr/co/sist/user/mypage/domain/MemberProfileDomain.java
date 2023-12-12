package kr.co.sist.user.mypage.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Setter
@Getter
public class MemberProfileDomain {
	private String MR_TITLE,
	M_PIC,
	MR_REGISTRATION_DATE
	; 
}
