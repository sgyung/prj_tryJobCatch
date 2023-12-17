package kr.co.sist.user.qna.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class QnADomain {
	private String IDX, I_ID, I_TITLE, I_CONTENT,
			I_REPLY, I_REPLY_CONDITION;
	private Date I_DATE, I_REPLY_DATE;
}
