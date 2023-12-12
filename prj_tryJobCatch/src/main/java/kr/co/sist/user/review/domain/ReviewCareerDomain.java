package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewCareerDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double fair_evaluation_count, career_growth_count, capable_colleague_count;
	
}
