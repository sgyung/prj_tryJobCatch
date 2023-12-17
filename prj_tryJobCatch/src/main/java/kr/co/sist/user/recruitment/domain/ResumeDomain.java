package kr.co.sist.user.recruitment.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ResumeDomain {
	
	private String mr_id;
	private String mr_title;
	private Date mr_registration_date;
}
