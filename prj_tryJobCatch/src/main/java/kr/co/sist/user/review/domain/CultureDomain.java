package kr.co.sist.user.review.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CultureDomain {
	private String rv_id;
	private int total_review, total_evaluation, total_sum;
	private double team_count, clothes_count, meeting_count, work_count, system_count, culture_count;
	private String oc_id, oc_team, oc_clothes, oc_meeting, oc_work, oc_system, oc_culture; 
}
