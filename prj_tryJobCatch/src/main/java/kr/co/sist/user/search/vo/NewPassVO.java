package kr.co.sist.user.search.vo;

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
public class NewPassVO {
	private String searchType, M_ID, M_PASS, M_PRE_PASS;
}
