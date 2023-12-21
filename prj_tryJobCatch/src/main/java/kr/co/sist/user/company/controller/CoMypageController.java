package kr.co.sist.user.company.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.sist.user.company.domain.CoLatestRecruitDomain;
import kr.co.sist.user.company.domain.CoProfileDomain;
import kr.co.sist.user.company.service.CoMypageService;
import kr.co.sist.user.mypage.vo.UploadImgVO;

@Controller
public class CoMypageController {

	@Autowired
	private CoMypageService coMypageService;
	
	@GetMapping("/company/coMyPageHome.do")
	public String coMyPageHome(HttpSession session, Model model) {
		String cm_id = (String)session.getAttribute("M_ID");
		
		int recruitmentCnt = coMypageService.getMyRecruitmentCnt(cm_id);
		int applyCnt = coMypageService.getAllApplyCnt(cm_id);
		CoLatestRecruitDomain latestRecruitment = coMypageService.getLatestRecruitment(cm_id);
		CoProfileDomain coProfile = coMypageService.getCoProfile(cm_id);
		
		model.addAttribute("recruitmentCnt",recruitmentCnt);
		model.addAttribute("applyCnt",applyCnt);
		model.addAttribute("latestRecruitment",latestRecruitment);
		model.addAttribute("coProfile",coProfile);
		
		return "company/co_mypage_home";
	}
	
	@ResponseBody
	@PostMapping("/company/fileupload.do")
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
			String uploadDir = "C:/Users/user/git/prj_tryJobCatch/prj_tryJobCatch/src/main/webapp/common/images/company_logo";
			//이미지 이름
			String imgName = image.getOriginalFilename()+"_"+currentDate+".png";
			//업로드할 파일 경로 생성
			String imgPath = uploadDir + "/" + imgName;
			// 저장 전 기존 파일 삭제
			String preImgName = coMypageService.getImg(m_id);
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
			json = coMypageService.uploadImg(uploadImgVO);
			
			return json.toJSONString();
		}//end if
		
		json.put("msg", "이미지를 업로드하는데 실패하였습니다.");
		return json.toJSONString();
	}//uploadImgFrm
	
	@ResponseBody
	@RequestMapping(value="/company/refreshImage.do", method={GET, POST})
	public String refreshImage(HttpSession session) {
		String m_id = (String)session.getAttribute("M_ID");
		
		System.out.println("_-------------" + m_id);
		String img = coMypageService.getImg(m_id);
		System.out.println("_-------------" +img);
		
		return img;
	}//refreshImage
	
	@GetMapping("/company/uploadImgFrm.do")
	public String uploadImgFrm() {
		
		return "company/co_upload_img_frm";
	}//uploadImgFrm
	
}

