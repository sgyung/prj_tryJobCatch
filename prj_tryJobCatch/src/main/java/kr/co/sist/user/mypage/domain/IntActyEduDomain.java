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
public class IntActyEduDomain {
	private String
		IIAE_SECTION, IIAE_INST_NAME,
		IIAE_CONTENT;
	
	private Date IIAE_START_DATE, IIAE_END_DATE;
}
