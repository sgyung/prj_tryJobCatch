package kr.co.sist.admin.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class QnADomain {
	private String i_id, m_id, i_title, i_content, i_reply, i_reply_condition;
	private Date i_date, i_reply_date;
	
}
