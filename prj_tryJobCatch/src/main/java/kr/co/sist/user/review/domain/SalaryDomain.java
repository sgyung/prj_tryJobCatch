package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SalaryDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double sal_num, firstsal_num, retirementpay_num, bonus_num;
	
}
