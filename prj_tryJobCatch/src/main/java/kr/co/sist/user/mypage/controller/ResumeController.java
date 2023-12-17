package kr.co.sist.user.mypage.controller;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.sist.user.mypage.domain.ResumeDomain;
import kr.co.sist.user.mypage.domain.ResumeMbrInfoDomain;
import kr.co.sist.user.mypage.service.ResumeService;
import kr.co.sist.user.mypage.vo.ResumeVO;
import kr.co.sist.user.mypage.vo.UploadImgVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ResumeController {
	
	@Autowired(required = false)
	private ResumeService resumeService;
	
	@GetMapping("/member/resumeRegistFrm.do")
	public String registResumeFrm(HttpSession session, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		
		ResumeMbrInfoDomain resumeMbrInfoDomain = resumeService.getMbrInfo(m_id);
		model.addAttribute("mbrInfo", resumeMbrInfoDomain);
		
		return "member/resume_regist_frm";
	}//registResumeFrm
	
	@RequestMapping(value="/member/resumeList.do", method={GET, POST})
	public String resumeList(HttpSession session, Model model) {
		String m_id = (String)session.getAttribute("M_ID");
		
		List<ResumeDomain> resumeList = resumeService.resumeList(m_id);
		
		model.addAttribute("resumeList", resumeList);
		
		
		return "member/mbr_resume_list";
	}//resumeList
	
	@GetMapping("/member/uploadImgFrm.do")
	public String uploadImgFrm() {
		
		return "member/upload_img_frm";
	}//uploadImgFrm
	
	@ResponseBody
	@PostMapping("/member/fileupload.do")
	public String fileUpload(HttpSession session, @RequestPart("image") MultipartFile image) throws IOException {
		String m_id = (String)session.getAttribute("M_ID");
		JSONObject json = new JSONObject();
		//이미지인지 체크
		boolean contentType = image.getContentType().startsWith("image/");
		if(!image.isEmpty() && contentType) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyymmddHHmmss");
			Date date = new Date();
			String currentDate = sdf.format(date);
			
			//업로드할 파일경로
			String uploadDir = "C:/Users/user/git/prj_tryJobCatch/prj_tryJobCatch/src/main/webapp/common/images/mbrImages";
			//이미지 이름
			String imgName = image.getOriginalFilename()+"_"+currentDate+".png";
			//업로드할 파일 경로 생성
			String imgPath = uploadDir + "/" + imgName;
			// 저장 전 기존 파일 삭제
			String preImgName = resumeService.getImg(m_id);
			System.out.println("img : " + preImgName );
			
			if( preImgName != null) {
				System.out.println("preImgName != null ");
				String preImgPath = uploadDir + "/" + preImgName;
				File preImg = new File(preImgPath);
				preImg.delete();
			}//end if
			
			//파일을 지정된 경로로 저장
			image.transferTo(new File(imgPath));
			
			UploadImgVO uploadImgVO = new UploadImgVO();
			uploadImgVO.setM_ID(m_id);
			uploadImgVO.setM_PIC(imgName);
			
			//저장완료 후 DB작업
			json = resumeService.uploadImg(uploadImgVO);
			
			return json.toJSONString();
		}//end if
		
		json.put("msg", "이미지를 업로드하는데 실패하였습니다.");
		return json.toJSONString();
	}//uploadImgFrm
	
	@ResponseBody
	@RequestMapping(value="/member/refreshImage.do", method={GET, POST})
	public String refreshImage(HttpSession session) {
		String m_id = (String)session.getAttribute("M_ID");
		String img = resumeService.getImg(m_id);
		return img;
	}//refreshImage
	
	@PostMapping("/member/registResume.do")
	public String registResume(HttpSession session, Model model, ResumeVO resumeVO){
		String m_id = (String)session.getAttribute("M_ID");
		resumeVO.setM_ID(m_id);
		
		System.out.println(resumeVO.toString());
		
		boolean resultFlag = resumeService.registResume(resumeVO);
		String msg = "이력서를 저장하지 못했습니다, 다시 시도해주세요.";
		if( resultFlag ) {
			msg = "이력서가 저장되었습니다.";
		}//end if
		model.addAttribute("msg", msg);
		
		return "forward:/member/resumeList.do";
		
	}//registResume
	
	@GetMapping("/member/removeResume.do")
	public String removeResume(@RequestParam(value="mr_id") String mr_id, Model model) {
		boolean resultFlag = resumeService.removeResume(mr_id);
		
		if(resultFlag) {
			model.addAttribute("msg", "이력서가 삭제되었습니다.");
		} else {
			model.addAttribute("msg", "이력서를 삭제하는데 실패하였습니다.");
		}//end else
		
		return "forward:/member/resumeList.do";
	}//removeResume
	
	@GetMapping("/member/modifyResumeFrm.do")
	public String modeifyResumeFrm(HttpSession session, Model model, @Param(value="mr_id")String mr_id) {
		String m_id = (String)session.getAttribute("M_ID");
		
		//인적사항
		ResumeMbrInfoDomain resumeMbrInfoDomain = resumeService.getMbrInfo(m_id);
		model.addAttribute("mbrInfo", resumeMbrInfoDomain);
		
		//이력서 항목
		JSONObject resumeItem = resumeService.getResume(mr_id);
		model.addAttribute("resumeItem", resumeItem);
		model.addAttribute("MR_ID", mr_id);
		
		return "member/resume_regist_frm";
	}//modeifyResumeFrm
	
}//class
