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
public class QnAPageVO {
	String M_ID;
	int startNum, endNum, currentPage;
}
