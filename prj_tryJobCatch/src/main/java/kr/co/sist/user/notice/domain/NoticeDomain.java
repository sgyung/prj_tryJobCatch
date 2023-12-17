package kr.co.sist.user.notice.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeDomain {
	private String n_id, n_title, n_content;
	private Date n_date;
}
