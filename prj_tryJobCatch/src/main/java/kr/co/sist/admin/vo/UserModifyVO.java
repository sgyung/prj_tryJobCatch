package kr.co.sist.admin.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserModifyVO {
	private String m_id, m_email, m_zip, m_addr, m_detail_addr;
}
