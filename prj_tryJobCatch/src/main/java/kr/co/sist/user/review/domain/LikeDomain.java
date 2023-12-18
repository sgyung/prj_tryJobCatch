package kr.co.sist.user.review.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LikeDomain {
	private String ic_id, m_id, cm_id, ic_check_condition,cm_co_name;
	private int check_count;
}
