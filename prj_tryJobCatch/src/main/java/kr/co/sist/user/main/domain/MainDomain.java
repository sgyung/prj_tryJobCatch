package kr.co.sist.user.main.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MainDomain {
	private String r_title;
	private String cm_co_name;
	private Date r_end_date;
	private String cm_co_pic;
	private String cm_co_logo;
	private String d_day;
	
}
