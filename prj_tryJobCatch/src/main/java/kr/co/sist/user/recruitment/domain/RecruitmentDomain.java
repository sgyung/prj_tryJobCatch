package kr.co.sist.user.recruitment.domain;

import java.sql.Clob;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RecruitmentDomain {
	private String r_id;
	private String cm_id;
	private String r_title;
	private String r_sal;
	private String r_time;
	private Date r_start_date;
	private Date r_end_date;
	private String r_recruitment_volume;
	private String r_info;
	private String d_name;
	private String ind_name;
	private String education;
	private String et_name;
	private String rec_name;
	private String wa_name;
	private String cm_co_name;
	private String cm_co_type;
	private String cm_co_logo;
	private String cm_homepage;
	private int cm_emp_num;
	private String cm_sales;
	private Date cm_establishment_year;
	private String rf_field;
	private String rs_name;
	private String r_registration_date;
	private String r_registration_state;
}
