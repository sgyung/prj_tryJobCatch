package kr.co.sist.user.mypage.domain;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ApplyDomain {
	private String
		A_RECRUITMENT_CONDITION, A_ID,
		R_TITLE, CM_CO_NAME, R_REGISTRATION_STATE;
	private Date A_DATE, R_END_DATE;
}
