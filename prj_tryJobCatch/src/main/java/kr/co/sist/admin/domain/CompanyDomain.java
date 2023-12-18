package kr.co.sist.admin.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CompanyDomain {
	private String cm_id, cm_pw, cm_name, cm_tel, cm_email, cm_co_registration_num, cm_co_name,
	cm_ceo_name, cm_zipcode, cm_addr, cm_detail_addr, cm_industry, cm_co_type, cm_homepage, cm_co_logo,cm_co_pic, cm_co_join_condition;
	private int cm_emp_num;
	private long cm_money, cm_sales;
	private Date cm_establishment_year, cm_co_registration_date;
	
}
