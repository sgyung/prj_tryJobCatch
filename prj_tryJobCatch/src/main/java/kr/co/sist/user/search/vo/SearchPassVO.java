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
public class SearchPassVO {
	private String searchType, M_ID, M_NAME, M_EMAIL,
	CO_ID, CO_NAME, CO_WORKNUM;  
}
