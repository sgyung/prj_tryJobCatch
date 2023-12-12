package kr.co.sist.user.join.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import oracle.sql.DATE;


@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class CompanyJoinVO {
	private String
		CM_ID, CM_PW, CM_NAME, CM_TEL, CM_EMAIL,
		CM_CO_REGISTRATION_NUM,	CM_CO_NAME,
		CM_CEO_NAME, CM_ZIPCODE, CM_ADDR, CM_DETAIL_ADDR,
		CM_INDUSTRY, CM_CO_TYPE, 
		CM_HOMEPAGE,
		
		CM_EMP_NUM, CM_MONEY, CM_SALES,
		CM_ESTABLISHMENT_YEAR
		;
	//private int CM_EMP_NUM, CM_MONEY, CM_SALES;
	//private DATE CM_ESTABLISHMENT_YEAR;
}
