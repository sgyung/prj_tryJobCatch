package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CorperationDomain {
	private String rv_id;
	private String m_id;
	private String r_id;
	private String cm_id;
	private String r_title;
	private Date r_start_date;
	private Date r_end_date;
	private String cm_co_name;
	private String cm_industry;
	private String cm_co_logo;
	private String ic_check_condition;
	private Date rv_reply_date;
	private String as_id, wlb_id, oc_id, w_id, js_id, cg_id;
	private int likeNum;
	private int recruitmentcount;
}
