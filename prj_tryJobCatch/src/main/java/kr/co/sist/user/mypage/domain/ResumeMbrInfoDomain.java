package kr.co.sist.user.mypage.domain;

import org.springframework.stereotype.Service;

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
public class ResumeMbrInfoDomain {
	String m_name, m_bday, m_gender, m_email, m_tel,
			m_zip, m_addr, m_detail_addr, m_pic;
}
