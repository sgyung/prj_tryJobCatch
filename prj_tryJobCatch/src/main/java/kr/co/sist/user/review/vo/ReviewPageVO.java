package kr.co.sist.user.review.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewPageVO {
	
	private String rv_id;
	private String cm_id;
	private String m_id;
	private int startNum;
	private int endNum, pageNumber, endPage, startPage, totalPage;
	private String currentPage;
	private String[] salary;
	private String[] balance;
	private String[] culture;
	private String[] welfare;
	private String[] stability;
	private String[] career; 
	private String as_id, wlb_id, oc_id, w_id, js_id, cg_id;
	private String field;
	private String keyword;
	
}
