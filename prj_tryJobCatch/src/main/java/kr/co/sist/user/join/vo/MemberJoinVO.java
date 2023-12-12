package kr.co.sist.user.join.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class MemberJoinVO {
	private String
		M_ID,
		M_PW,
		M_NAME,
		M_EMAIL,
		M_TEL,
		M_ZIP,
		M_ADDR,
		M_DETAIL_ADDR,
		M_GENDER,
		M_BDAY;
	
}
