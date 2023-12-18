package kr.co.sist.admin.vo;

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
	private String m_id;
}
