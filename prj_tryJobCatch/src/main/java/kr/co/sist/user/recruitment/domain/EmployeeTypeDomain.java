package kr.co.sist.user.recruitment.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EmployeeTypeDomain {
	private String et_id;
	private String et_name;
	private int et_cnt;
}
