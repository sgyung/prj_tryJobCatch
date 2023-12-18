package kr.co.sist.user.company.domain;

import java.sql.Date;
import java.util.List;

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
public class RecruitDetailDomain {
	private String
		R_ID,
		R_TITLE, R_SAL, R_TIME,
		R_RECRUITMENT_VOLUME, R_INFO,
		R_REGISTRATION_STATE,
		D_NAME, IND_NAME, EDUCATION,
		ET_NAME, REC_NAME, WA_NAME,
		
		D_ID, IND_ID, E_ID, ET_ID, REC_ID, WA_ID
		
		;
	
	private Date R_START_DATE, R_END_DATE, R_REGISTRATION_DATE;
	
	private List<String> RS_NAME, RF_FIELD;
}
