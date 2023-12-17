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
public class CareerDomain {
	private String
		C_CO_NAME, C_DEPT_NAME,
		C_EMP_CONDITION,
		C_POSITION, C_DUTY;
	
	private Date C_JOIN_DATE, C_RETIREMENT_DATE;
}
