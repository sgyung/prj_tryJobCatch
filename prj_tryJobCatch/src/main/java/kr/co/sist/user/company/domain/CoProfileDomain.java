package kr.co.sist.user.company.domain;

import java.sql.Date;

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
public class CoProfileDomain {
	private String CM_CO_NAME, CM_CO_PIC, CM_CO_LOGO;
}