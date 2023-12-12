package kr.co.sist.user.mypage.vo;

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
public class ResumeVO {
	private String
		//인적사항
		M_ID, M_TEL, M_ZIP, M_ADDR, M_DETAIL_ADDR,
		//이력서 제목, 아이디
		MR_TITLE, MR_ID;
	
	private String[]
		//스킬
		S_NAME,
		//학력
		AA_SCHOOL_DIVISION, AA_SCHOOL_NAME, AA_ENTRANCE_DATE,
		AA_GRADUATION_DATE, AA_GRADUATION_CONDITION, AA_MAJOR_NAME,
		AA_CREDIT, AA_DEGREE,
		//경력
		C_CORPORATE_NAME, C_DEPARTMENT_NAME, C_JOINING_DATE,
		C_RETIREMENT_DATE, C_POSITION, C_DUTY,
		//인턴,대외활동,교육
		IIAE_SECTION, IIAE_INSTITUTION_NAME,
		IIAE_START_DATE, IIAE_END_DATE, IIAE_CONTENT,
		//자격증
		CER_NAME, CER_ISSUING_ORGANIZATION, CER_ACQUISITION_DATE,
		//수상
		A_NAME, A_INSTITUTION, A_DATE, A_CONTENT,
		//어학
		L_TYPE, L_NAME, L_ABILITY, L_TEST_NAME, L_SCORE, L_ACQUISITION_DATE,
		//포트폴리오
		P_URL,
		//자기소개서
		CL_TITLE, CL_CONTENT
		;
	
}//ResumeVO
