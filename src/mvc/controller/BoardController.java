package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;
import mvc.service.UploadService;

@Controller
@RequestMapping("/account")
@SessionAttributes("id")
public class BoardController {

	@Autowired
	ServletContext ctx;
	@Autowired
	PostDAO pDao;
	@Autowired
	UploadService us;
	@Autowired
	FollowDAO fDAO;
	@Autowired
	AccountDAO aDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	Gson gson;

	// =======================================
	// 게시물 업로드
	@RequestMapping("/uploadp.do")
	public String uploadHandle(@RequestParam("photo") MultipartFile[] files, HttpServletRequest req,
			@RequestParam("comment") String comm, @CookieValue(name="setId") String id)
			throws IOException, InterruptedException {
		System.out.println("들어옴");
		Map result = us.uploadImages(files);	//uploadservice에서 처리된 결과값(파일들 리스트로 저장된 것, 성공 유무(rst))
		boolean rst = (boolean) result.get("successResult");
		//======================================================
		String[] comments = comm.split("\\s");
		List<String> commList = new ArrayList<>();
		List<String> tagList = new ArrayList<>();
		List<String> annoList = new ArrayList<>();
		for (String comment : comments) {
			if(!(comment.startsWith("#") || comment.startsWith("@"))) {
				commList.add(comment);
			} else {
				if (comment.startsWith("#")) {
					tagList.add(comment);
				}else if (comment.startsWith("@")) {
					annoList.add(comment);
				}
			}
		}
		
		String[] uuids = UUID.randomUUID().toString().split("-");
		String key= uuids[2]+"-"+uuids[1];
		if (rst) {
			Map<String, Object> map = new LinkedHashMap<>();
			map.put("writer", id);
			//업로드한 파일의 갯수만큼 uploads에 저장
			List<String> result2 = (List) result.get("uploadResult");
				map.put("image", result2);
				//System.out.println(result2);
				map.put("time", new Date());
				map.put("comment", commList);
				map.put("tags", tagList);
				map.put("annotations", annoList);
			AccountDTO aDTO = aDAO.selectOneAccountre(id);
		//	System.out.println(aDTO.getProfile()+"값");
			map.put("profile", aDTO.getProfile()=="null" ? "null" : aDTO.getProfile());
			//System.out.println("게시물 이디이"+key);
			map.put("code", key);
		//	System.out.println(map);
			pDao.insertImage(map);
		}
		return "insta_main";
	}

	// ==============================================================
	// 게시물 FindAll
	public String FindAll() {
		return "insta_register";
	}
	@RequestMapping("/activity.do")
	public String activityHandle(@CookieValue (name="setId") String owner) {
			List<Map> followList=fDAO.selectFollwingProfileId(owner);
			List<Map> boardList=pDao.findFollowPostById(followList);
			List<Map> ReplyList=rDAO.findLikeListBoardId(followList);
			List<Map> LikeList=rDAO.findLikeListBoardId(followList);
			
			Gson gson=new Gson();
			Map map=new LinkedHashMap<>();
			
			map.put("boardList", boardList);
			map.put("replyList", ReplyList);
			map.put("likeList", LikeList);
			
		return gson.toJson(map);
	}


}
