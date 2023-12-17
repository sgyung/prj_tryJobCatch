package kr.co.sist.user.qna.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.user.qna.domain.QnADomain;
import kr.co.sist.user.qna.service.QnAService;
import kr.co.sist.user.qna.vo.QnAPageVO;
import kr.co.sist.user.qna.vo.QnAVO;
import lombok.Getter;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
@Controller
public class QnAController {
	
	@Autowired
	private QnAService qnaService;
	
	@RequestMapping(value="/member/qnaList.do", method={GET, POST})
	public String qnaList(HttpSession session, Model model, QnAPageVO qnaPageVO) {
		String m_id = (String)session.getAttribute("M_ID");
		qnaPageVO.setM_ID(m_id);

		System.out.println("ddddd : " + qnaPageVO.getCurrentPage());
		int currentPage = qnaPageVO.getCurrentPage();
		if( currentPage == 0 ) {
			currentPage = 1;
			qnaPageVO.setCurrentPage(1);
		}//end if
		//page당 보여줄 항목
		int pageSize = 5;
		//시작 row
		int startNum =  (currentPage - 1) * pageSize + 1;
		//끝 row
		int endNum = startNum + pageSize - 1;
		//모든 문의 row
		int totalCnt = qnaService.getQnATotalCnt(m_id);
		//페이지 수
		int pageCount = (totalCnt + pageSize - 1) / pageSize; 
		//범위에 맞는 문의 선택
		qnaPageVO.setEndNum(endNum);
		qnaPageVO.setStartNum(startNum);
		List<QnADomain> qnaList = qnaService.getQnAList(qnaPageVO);
		
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("endNum", endNum);
		model.addAttribute("startNum", startNum);
		
		return "member/mbr_qna_list";
	}//registQuestionFrm
	
	@RequestMapping(value="/member/questionFrm.do", method={GET, POST})
	public String registQuestionFrm() {
		
		return "member/regist_qna_frm";
	}//registQuestionFrm
	
	@PostMapping("/member/registQuestion.do")
	public String registQuestion(HttpSession session, QnAVO qnaVO, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		qnaVO.setM_ID(m_id);
		boolean resultFlag = qnaService.addInquire(qnaVO);
		if( resultFlag ) {
			model.addAttribute("msg", "등록되었습니다.");
			return "forward:/member/qnaList.do";
		}//end if
		model.addAttribute("msg", "등록에 실패하였습니다, 다시 시도해주세요.");
		return "forward:/member/questionFrm.do";
	
	}//registQuestion
	
	@GetMapping("/member/qnaDetail.do")
	public String qnaDetail(Model model, @Param(value="i_id")String i_id) {
		
		QnADomain qnaDetail = qnaService.getOneQnA(i_id);
		
		model.addAttribute("qnaDetail", qnaDetail);
		
		return "member/mbr_qna_detail";
	}//qnaDetail
	
	
}//class
