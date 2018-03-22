package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mvc.service.PostDAO;
import mvc.service.UploadService;

@Controller
@RequestMapping("/account")
public class BoardController {

	@Autowired
	ServletContext ctx;
	@Autowired
	PostDAO pDao;
	@Autowired
	UploadService us;

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
		
			
		if (rst) {
			Map map = new LinkedHashMap<>();
			map.put("writer", id);
			//업로드한 파일의 갯수만큼 uploads에 저장
			List<String> result2 = (List) result.get("uploadResult");
				map.put("image", result2);
				System.out.println(result2);
			//map.put("path", path);
			map.put("time", new Date());
			map.put("comment", commList);
			map.put("tags", tagList);
			map.put("annotations", annoList);
			System.out.println(map);
			pDao.insertImage(map);
		}
		return "insta_main";
	}

	// ==============================================================
	// 게시물 FindAll
	public String FindAll() {
		return "insta_register";
	}
}
