package kr.co.sist.user.notice.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.user.notice.dao.NoticeDAO;
import kr.co.sist.user.notice.domain.NoticeDomain;
import kr.co.sist.user.notice.vo.PageVO;

@Component
public class NoticeListProcess {

	@Autowired
	private NoticeDAO nDAO;
	
	public JSONObject recuitmentList(PageVO pVO) {
		JSONObject jsonObj = new JSONObject();
		NoticeService ns = new NoticeService();
		
		try {
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			List<NoticeDomain> list = nDAO.selectNoticeList(pVO);
			int cnt = nDAO.selectNoticeTotalCount(pVO);
			
			String pageNaion = ns.pageNation(pVO);
			
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
		
			for(NoticeDomain notice : list) {
			
				jsonTemp = new JSONObject();
				jsonTemp.put("n_id", notice.getN_id());
				jsonTemp.put("n_title", notice.getN_title());
				jsonTemp.put("n_content", notice.getN_content());
				jsonTemp.put("n_date", sdf.format(notice.getN_date()));
				jsonArr.add(jsonTemp);
			}
			
			jsonObj.put("data", jsonArr);
			jsonObj.put("dataSize", cnt);
			jsonObj.put("pageNation", pageNaion);
			
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj;
	}
}
