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
public class LanguageDomain {
	private String
		L_TYPE, L_NAME, L_ABILITY,
		L_TEST, L_SCORE ;
	private Date L_ACQUISITION_DATE;
}
