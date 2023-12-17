package kr.co.sist.user.notice.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageVO {
	private int startNum, endNum, pageNumber, endPage, startPage, totalPage;
	private String field, keyword;
	private String currentPage;
}