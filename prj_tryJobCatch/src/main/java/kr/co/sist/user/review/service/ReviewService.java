package kr.co.sist.user.review.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.recruitment.vo.PageVO;
import kr.co.sist.user.review.dao.ReviewDAO;
import kr.co.sist.user.review.domain.BalanceDomain;
import kr.co.sist.user.review.domain.CorperationDomain;
import kr.co.sist.user.review.domain.CultureDomain;
import kr.co.sist.user.review.domain.ReviewCareerDomain;
import kr.co.sist.user.review.domain.SalaryDomain;
import kr.co.sist.user.review.domain.StabilityDomain;
import kr.co.sist.user.review.domain.WelfareDomain;
import kr.co.sist.user.review.vo.ReviewPageVO;

@Component
public class ReviewService {

	@Autowired
	private ReviewDAO rDAO;
	
	public List<CorperationDomain> searchReview(ReviewPageVO rpVO){
		List<CorperationDomain> list = null;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(rpVO.getSalary() != null && rpVO.getSalary().length > 0) {
			map.put("annual_salary",rpVO.getSalary());
		}
		if(rpVO.getBalance() != null && rpVO.getBalance().length > 0) {
			map.put("work_life_balance",rpVO.getBalance());
		}
		if(rpVO.getCulture() != null && rpVO.getCulture().length > 0) {
			map.put("organizational_culture",rpVO.getCulture());
		}
		if(rpVO.getWelfare() != null && rpVO.getWelfare().length > 0) {
			map.put("welfareList",rpVO.getWelfare());
		}
		if(rpVO.getStability() != null && rpVO.getStability().length > 0) {
			map.put("job_stability",rpVO.getStability());
		}
		if(rpVO.getCareer() != null && rpVO.getCareer().length > 0) {
			map.put("career_growth",rpVO.getCareer());
		}
		
		map.put("startNum", rpVO.getStartNum());
		map.put("endNum", rpVO.getEndNum());
		
		try {
			list = rDAO.selectSearchReview(map);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public int reviewTotalCount(ReviewPageVO rpVO) {
		int cnt = 0;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(rpVO.getSalary() != null && rpVO.getSalary().length > 0) {
			map.put("annual_salary",rpVO.getSalary());
		}
		if(rpVO.getBalance() != null && rpVO.getBalance().length > 0) {
			map.put("work_life_balance",rpVO.getBalance());
		}
		if(rpVO.getCulture() != null && rpVO.getCulture().length > 0) {
			map.put("organizational_culture",rpVO.getCulture());
		}
		if(rpVO.getWelfare() != null && rpVO.getWelfare().length > 0) {
			map.put("welfareList",rpVO.getWelfare());
		}
		if(rpVO.getStability() != null && rpVO.getStability().length > 0) {
			map.put("job_stability",rpVO.getStability());
		}
		if(rpVO.getCareer() != null && rpVO.getCareer().length > 0) {
			map.put("career_growth",rpVO.getCareer());
		}
	
		try {
			cnt = rDAO.selectReviewTotalCount(map);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return cnt; 
	}
	
	public int pageScale() {
		int pageScale = 1;
		
		return pageScale;
	}
	
	public int currentPage(ReviewPageVO rpVO) {
		int currentPage = 1;
		
		if(rpVO.getCurrentPage() != null) {
			currentPage = Integer.parseInt(rpVO.getCurrentPage());
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
	
	
	public String pageNation(ReviewPageVO rpVO) {
	    int movePage = 0;
	    int currentPage = Integer.parseInt(rpVO.getCurrentPage());
	    int endPage = rpVO.getEndPage();
	    int startPage = rpVO.getStartPage();
	    int pageNumber = rpVO.getPageNumber();
	    int totalPage = rpVO.getTotalPage();

	    StringBuilder sb = new StringBuilder();

	    if (currentPage > pageNumber) {
	        movePage = startPage - 1;
	        sb.append("<p><a class='tplBtn btnPgnPrev' href='#void' onclick='reviewList(\"")
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
	            sb.append("<li><a href='#void' onclick='reviewList(\"")
	              .append(movePage).append("\")'>").append(movePage).append("</a></li>");
	        }
	        movePage++;
	    }
	    sb.append("</ul>");

	    if (totalPage > endPage) {
	        movePage = endPage + 1;
	        sb.append("<p><a class='tplBtn btnPgnNext' href='#void' onclick='reviewList(\"")
	        .append(movePage).append("\")'>다음<i class=\"ico\"></i></a></p>");
	    } /*else {
	    	sb.append("<p><a class='tplBtn btnPgnNext' href='#void'>다음<i class=\"ico\"></i></a></p>");
	    }*/


	    return sb.toString(); // [<<] ... [1]23 ..[>>]
	}
	
	// 리뷰 상세 - salary 리뷰 환산 값
	public SalaryDomain selectSalaryNum(String id) {
		SalaryDomain sd = null;
		
		try {
			
			sd = rDAO.selectSalaryNum(id);
			
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return sd;
	}
	
	// 리뷰 상세 - balance 리뷰 환산 값
		public BalanceDomain selectBalanceNum(String id) {
			BalanceDomain bd = null;
			
			try {
				
				bd = rDAO.selectBalanceNum(id);
				
				
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return bd;
		}
		
		// 리뷰 상세 - culture 리뷰 환산 값
		public CultureDomain selectCultureNum(String id) {
			CultureDomain cd = null;
			
			try {
				
				cd = rDAO.selectCultureNum(id);
				
				
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return cd;
		}
		
		// 리뷰 상세 - welfare 리뷰 환산 값
		public WelfareDomain selectWelfareNum(String id) {
			WelfareDomain wd = null;
			
			try {
				
				wd = rDAO.selectWelfareNum(id);
				
				
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return wd;
		}
		
		// 리뷰 상세 - stability 리뷰 환산 값
		public StabilityDomain selectStabilityNum(String id) {
			StabilityDomain sd = null;
			
			try {
				
				sd = rDAO.selectStabilityNum(id);
				
				
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return sd;
		}
		
		// 리뷰 상세 - career 리뷰 환산 값
		public ReviewCareerDomain selectCareerNum(String id) {
			ReviewCareerDomain rcd = null;
			
			try {
				
				rcd = rDAO.selectCareerNum(id);
				
				
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return rcd;
		}
		
		// 리뷰 상세 - 기업정보
		public CorperationDomain corperationInfo(String id) {
			CorperationDomain cd = null;
			
			try {
				cd = rDAO.selectCorperation(id);
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return cd;		
		}
		
		// 리뷰 상세 - 채용정보
		public List<CorperationDomain> recruitmentInfo(String id) {
			List<CorperationDomain> list = null;
			
			try {
				list = rDAO.selectRecruitment(id);
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return list;		
		}
	
}
