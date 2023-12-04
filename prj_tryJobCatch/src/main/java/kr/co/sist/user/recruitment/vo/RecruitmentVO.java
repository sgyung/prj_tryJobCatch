package kr.co.sist.user.recruitment.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RecruitmentVO {
	private String cm_id;
	private String r_title;
	private String r_sal;
	private String r_time;
	private Date r_start_Date;
	private Date r_end_Date;
	private String r_recruitment_volume;
	private String r_info;
	private String d_id;
	private String ind_id;
	private String e_id;
	private String et_id;
	private String rec_id;
	private String wa_id;
	private String cm_co_name;
	private String cm_co_type;
	private String cm_co_logo;
	private String cm_homepage;
	private int cm_emp_num;
	private Date cm_establishment_year;
	private String[] rf_field;
	private String[] rs_name;
}
