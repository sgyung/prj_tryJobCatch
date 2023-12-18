package kr.co.sist.user.company.domain;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class RecruitListDomain {
	
	private int applycnt;
	
	private String
		R_ID,
		R_TITLE,
		R_REGISTRATION_STATE;
	
	
	private Date R_REGISTRATION_DATE, R_START_DATE, R_END_DATE;
}
