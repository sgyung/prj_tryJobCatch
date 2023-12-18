package kr.co.sist.admin.domain;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserDomain {
	private String m_name, m_id, m_email, m_tel, m_zip, m_addr, m_detail_addr, m_gender, m_pic, m_join_condition, m_bday;
	private Date m_registration_date;
	
}
