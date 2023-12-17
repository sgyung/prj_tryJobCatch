package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WelfareDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double study_count, spply_count, holiday_bonus_count, vacation_bonus_count, stock_option_count;
	private String  w_id, w_study, w_spply, w_holiday_bonus, w_vacation_bonus, w_stock_option;
}
