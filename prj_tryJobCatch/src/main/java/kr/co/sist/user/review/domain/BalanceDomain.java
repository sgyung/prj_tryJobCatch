package kr.co.sist.user.review.domain;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class BalanceDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double provide_count, gohome_count, break_count;
	
}
