package kr.co.sist.user.company.domain;



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
public class ApplyMbrDomain {
	private String
		r_id, mr_id, m_id, a_id, m_name, mr_title,
		a_recruitment_condition, a_date; 
}
