package kr.co.sist.user.company.domain;

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
public class CoLatestRecruitDomain {
	private String R_TITLE;
	private Date R_REGISTRATION_DATE;
}