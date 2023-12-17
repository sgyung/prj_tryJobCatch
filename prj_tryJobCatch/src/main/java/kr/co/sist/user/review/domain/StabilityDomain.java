package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StabilityDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double grow_co_count, mgmt_vision_count, best_count;
	private String js_id, js_grow_co, js_mgmt_vision, js_best;
}
