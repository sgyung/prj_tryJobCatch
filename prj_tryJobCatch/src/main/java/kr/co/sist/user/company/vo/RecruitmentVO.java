package kr.co.sist.user.company.vo;


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
public class RecruitmentVO {
	private String
		CM_ID, R_ID, 
		R_TITLE, R_SAL, R_TIME,
		R_START_DATE, R_END_DATE,
		R_RECRUITMENT_VOLUME, R_INFO,
		R_REGISTRATION_DATE, R_REGISTRATION_STATE,
		
		D_ID, IND_ID, E_ID, ET_ID, REC_ID, WA_ID
		
		
	; 
	private String[] RS_NAME, RF_FIELD;
	
	private int skillDeleteCnt, fieldDeleteCnt;
}
