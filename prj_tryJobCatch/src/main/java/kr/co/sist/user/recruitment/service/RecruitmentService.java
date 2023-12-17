package kr.co.sist.user.recruitment.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.mypage.domain.MemberDomain;
import kr.co.sist.user.recruitment.dao.UserRecruitmentDAO;
import kr.co.sist.user.recruitment.domain.ApplyDomain;
import kr.co.sist.user.recruitment.domain.AreaDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentCareerDomain;
import kr.co.sist.user.recruitment.domain.DutyDomain;
import kr.co.sist.user.recruitment.domain.EducationDomain;
import kr.co.sist.user.recruitment.domain.EmployeeTypeDomain;
import kr.co.sist.user.recruitment.domain.IndustryDomain;
import kr.co.sist.user.recruitment.domain.RecruitmentDomain;
import kr.co.sist.user.recruitment.domain.ResumeDomain;
import kr.co.sist.user.recruitment.vo.ApplyVO;
import kr.co.sist.user.recruitment.vo.PageVO;

@Component
public class RecruitmentService {
	
	@Autowired
	private UserRecruitmentDAO urDAO;
	
	public List<RecruitmentDomain> SearchRecruitment(PageVO pVO){
		List<RecruitmentDomain> list = null;
		
		try {
			
			list = urDAO.selectSearchRecruitment(pVO);
			
		}catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public RecruitmentDomain OneRecruitment(String id) {
		RecruitmentDomain rd = null;
		
		try {
			rd = urDAO.selectOneRecruitment(id);
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return rd;
	}
	
	public List<DutyDomain> allDuty(){
		List<DutyDomain> list = null;
		
		try {
		
			list = urDAO.selectAllDuty();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public List<AreaDomain> allArea(){
		List<AreaDomain> list = null;
		
		try {
		
			list = urDAO.selectAllArea();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public List<IndustryDomain> allIndustry(){
		List<IndustryDomain> list = null;
		
		try {
		
			list = urDAO.selectAllIndustry();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public List<EducationDomain> allEducation(){
		List<EducationDomain> list = null;
		
		try {
		
			list = urDAO.selectAllEducation();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public List<EmployeeTypeDomain> allEmployeeType(){
		List<EmployeeTypeDomain> list = null;
		
		try {
		
			list = urDAO.selectAllEmploymentType();
		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}

	public List<RecruitmentCareerDomain> allCareer(){
		List<RecruitmentCareerDomain> list = null;
		
		try {
			
			list = urDAO.selectAllCareer();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	// 회원이 특정 채용에 지원한 지원상태 조회
	public String applyCondition(ApplyVO aVO) {
		String condition = "";
		
		ApplyDomain ad = null;
		
		try {
			
			ad = urDAO.selectApply(aVO);
			
			if(ad == null) {
				condition = "N";
			}else {
				condition = "Y";
			}
			
		}catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return condition;
	}
	
	// 지원하기 insert
	public boolean applyComplete(ApplyVO aVO) {
		boolean flag = false;
		
		try {
			
			flag = urDAO.insertApply(aVO);
			
		}catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return flag;
	}
	
	// 이력서 조회
	public List<ResumeDomain> resumeList(String id){
		List<ResumeDomain> list = null;
		
		try {
			list = urDAO.selectResume(id);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	// 회원 이메일,번호 조회
	public MemberDomain searchMember(String id) {
		MemberDomain md = null;
		
		try {
			
			md = urDAO.selectMember(id);
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return md;
	}
	
	public int totalCount( PageVO pVO ) {
		int totalCount = 0;
		
		try {
			
			totalCount = urDAO.recruitmentTotalCount(pVO);
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return totalCount;
	}
	
	public int pageScale() {
		int pageScale = 1;
		
		return pageScale;
	}
	
	public int currentPage(PageVO pVO) {
		int currentPage = 1;
		
		if(pVO.getCurrentPage() != null) {
			currentPage = Integer.parseInt(pVO.getCurrentPage());
		}
		
		return currentPage;
	}
	
	public int totalPage(int totalCount , int pageScale) {
		int totalPage = 0;
		
		totalPage = (int)Math.ceil(totalCount/(double)pageScale);
		
		return totalPage;
	}
	
	public int startNum(int currentPage, int pageScale) {
		int startNum = 0;
		
		startNum = currentPage * pageScale - pageScale + 1;
		
		return startNum;
	}
	
	public int endNum(int startNum, int pageScale) {
		int endNum = 0;
		
		endNum = startNum + pageScale -1;
		
		return endNum;
	}
	
	public int pageNumber() {
		int pageNumber = 5;
		
		return pageNumber;
	}
	
	public int startPage(int currentPage, int pageNumber) {
		int startPage = 0;
		
		startPage = ((currentPage-1)/pageNumber)*pageNumber+1;
		
		return startPage;
	}
	
	public int endPage(int startPage, int pageNumber, int totalPage) {
	    int endPage = (((startPage - 1) + pageNumber) / pageNumber) * pageNumber;

	    // 계산된 끝 페이지가 총 페이지보다 크다면 총 페이지 수를 끝 페이지로 지정
	    if (totalPage <= endPage) {
	        endPage = totalPage;
	    }

	    return endPage;
	}
	
	
	public String pageNation(PageVO pVO) {
	    int movePage = 0;
	    int currentPage = Integer.parseInt(pVO.getCurrentPage());
	    int endPage = pVO.getEndPage();
	    int startPage = pVO.getStartPage();
	    int pageNumber = pVO.getPageNumber();
	    int totalPage = pVO.getTotalPage();

	    StringBuilder sb = new StringBuilder();

	    if (currentPage > pageNumber) {
	        movePage = startPage - 1;
	        sb.append("<p><a class='tplBtn btnPgnPrev' href='#void' onclick='recruitmentList(\"")
	        .append(movePage).append("\")'><i class=\"ico\"></i>이전</a></p>");
	    } /*else {
	    	sb.append("<p><a class='tplBtn btnPgnPrev' href='#void'><i class=\"ico\"></i>이전</a></p>");
	    }*/

	    sb.append("<ul>");
	    movePage = startPage;
	    while (movePage <= endPage) {
	        if (movePage == currentPage) {
	            // 현재페이지와 이동할 페이지가 같다면 링크없이 인덱스리스트 제공
	            sb.append("<li><span class='now'>").append(movePage).append("</span></li>");
	        } else {
	            sb.append("<li><a href='#void' onclick='recruitmentList(\"")
	              .append(movePage).append("\")'>").append(movePage).append("</a></li>");
	        }
	        movePage++;
	    }
	    sb.append("</ul>");

	    if (totalPage > endPage) {
	        movePage = endPage + 1;
	        sb.append("<p><a class='tplBtn btnPgnNext' href='#void' onclick='recruitmentList(\"")
	        .append(movePage).append("\")'>다음<i class=\"ico\"></i></a></p>");
	    } /*else {
	    	sb.append("<p><a class='tplBtn btnPgnNext' href='#void'>다음<i class=\"ico\"></i></a></p>");
	    }*/


	    return sb.toString(); // [<<] ... [1]23 ..[>>]
	}
	
	
}
