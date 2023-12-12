package kr.co.sist.user.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ResumeDomain {
	private String MR_ID, MR_REGISTRATION_DATE, MR_TITLE;
}
