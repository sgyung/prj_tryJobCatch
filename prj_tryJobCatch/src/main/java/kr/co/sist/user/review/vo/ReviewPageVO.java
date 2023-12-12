package kr.co.sist.user.review.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewPageVO {
	
	private String reviewId;
	private String corperationId;
	private int startNum;
	private int endNum, pageNumber, endPage, startPage, totalPage;
	private String currentPage;
	private String[] salary;
	private String[] balance;
	private String[] culture;
	private String[] welfare;
	private String[] stability;
	private String[] career; 
	private String field;
	private String keyword;
	
}
