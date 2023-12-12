package kr.co.sist.user.recruitment.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageVO {
	private int startNum;
	private int endNum, pageNumber, endPage, startPage, totalPage;
	private String currentPage;
	private String field;
	private String keyword;
	private String d_id;
	private String ind_id;
	private String e_id;
	private String et_id;
	private String rec_id;
	private String wa_id;
	private String cm_co_type;

}
