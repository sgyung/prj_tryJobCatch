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
public class SearchIdVO {
	private String searchType, M_NAME, M_EMAIL,
	CO_NAME, CO_WORKNUM;  
}
