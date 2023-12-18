package kr.co.sist.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;

import kr.co.sist.admin.dao.UserDAO;
import kr.co.sist.admin.domain.UserDomain;
import kr.co.sist.admin.vo.PageVO;
import kr.co.sist.admin.vo.UserModifyVO;

public class UserService {

	public List<UserDomain> SearchUser(PageVO pVO){
		UserDAO uDAO = UserDAO.getInstance();
		
		List<UserDomain> list = null;
		
		try {
			list = uDAO.selectSearchUser(pVO);
			
		} catch(PersistenceException pe){
			pe.printStackTrace();
		}
		
		return list;
	}
	
	public List<UserDomain> printAllUser(){
		UserDAO uDAO = UserDAO.getInstance();
		
		List<UserDomain> userList = uDAO.selectAllUser();
		
		return userList;
	}
	
	public UserDomain printUser(String m_id){
		UserDAO uDAO = UserDAO.getInstance();
		
		UserDomain userInfo = uDAO.selectUser(m_id);
		
		return userInfo;
	}
	
	public void withdrawUser(String m_id) {
		UserDAO uDAO = UserDAO.getInstance();
		
		uDAO.deleteUser(m_id);
	}
	
	public void modifyUser(UserModifyVO umVO) {
		UserDAO uDAO = UserDAO.getInstance();
		
		uDAO.updateUser(umVO);
	}
	
	public int totalCount( PageVO pVO ) {
		UserDAO uDAO = UserDAO.getInstance();
		int totalCount = 0;
		
		try {
			
			totalCount = uDAO.userTotalCount(pVO);
			
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

	    // ���� �� �������� �� ���������� ũ�ٸ� �� ������ ���� �� �������� ����
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
	        .append(movePage).append("\")'><i class=\"ico\"></i>����</a></p>");
	    } /*else {
	    	sb.append("<p><a class='tplBtn btnPgnPrev' href='#void'><i class=\"ico\"></i>����</a></p>");
	    }*/

	    sb.append("<ul>");
	    movePage = startPage;
	    while (movePage <= endPage) {
	        if (movePage == currentPage) {
	            // ������������ �̵��� �������� ���ٸ� ��ũ���� �ε�������Ʈ ����
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
	        .append(movePage).append("\")'>����<i class=\"ico\"></i></a></p>");
	    } /*else {
	    	sb.append("<p><a class='tplBtn btnPgnNext' href='#void'>����<i class=\"ico\"></i></a></p>");
	    }*/


	    return sb.toString(); // [<<] ... [1]23 ..[>>]
	}
	
}
