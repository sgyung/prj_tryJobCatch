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
public class AcademicAbilityDomain {
	private String
		AA_SCHOOL_DIVISION, AA_SCHOOL_NAME, 
		AA_GRADUATION_CONDITION, AA_MAJOR,
		AA_CREDIT, AA_DEGREE ;
	
	private Date AA_ENTRANCE_DATE, AA_GRADUATION_DATE;
}
