package kr.co.sist.user.qna.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class QnAVO {
	private String I_ID, M_ID, I_TITLE,
			I_CONTENT, I_REPLY, I_DATE,
			I_REPLY_CONDITION, I_REPLY_DATE;
}
