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
public class AwardDomain {
	private String A_NAME, A_INST, A_CONTENT;
	private Date  A_DATE;
}
