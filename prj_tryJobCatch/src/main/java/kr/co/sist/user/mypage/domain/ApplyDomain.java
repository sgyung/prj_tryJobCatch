package kr.co.sist.user.mypage.domain;

import java.sql.Date;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@Service
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ApplyDomain {
	private String
		A_RECRUITMENT_CONDITION, A_ID,
		R_TITLE, CM_CO_NAME, R_REGISTRATION_STATE;
	private Date A_DATE, R_END_DATE;
}
