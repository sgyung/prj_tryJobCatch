package kr.co.sist.user.mypage.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MemberInfoVO {
	private String M_TEL, M_EMAIL, M_ZIP, M_ADDR, M_DETAIL_ADDR, M_ID;
}
