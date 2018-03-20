package mvc.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mvc.service.PostDAO;

@Controller
@RequestMapping("/account")
public class BoardController {

	@Autowired
	ServletContext ctx;
	@Autowired
	PostDAO pDao;

	// =======================================
	// 게시물 업로드
	@RequestMapping("/uploadp.do")
	public String uploadHandle(@RequestParam("photo") MultipartFile[] files, HttpServletRequest req,
			@RequestParam("comment") String comm, @RequestParam("id") String id)
			throws IOException, InterruptedException {
		System.out.println("들어옴");
		boolean rst = true;
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
		
		if (files.length != 0) {
			File target = null;
			String path = ctx.getRealPath("/");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyMMddHHmmss");
			System.out.println(path);

			
			List<String> result = new ArrayList<>();
			for (MultipartFile file : files) {
				String str = sdf.format(System.currentTimeMillis());
				Long size = file.getSize();
				String original = file.getOriginalFilename();
				if (size < (1024 * 1024 * 10)) {
					target = new File(path, str +"."+ FilenameUtils.getExtension(original));
					String targetName = target.getName();
					System.out.println(targetName +"//"+ comm +"//"+ id);
					result.add("/" + targetName);
					//System.out.println(result);
					try {
						file.transferTo(target);
						rst = true;
					} catch (Exception e) {
						rst = false;
					}
				}
			}
			
			
			if (rst) {
				Map map = new LinkedHashMap<>();
				map.put("writer", id);
				//업로드한 파일의 갯수만큼 uploads에 저장
				for(String uploads : result) {
					map.put("image", uploads);
					System.out.println(uploads);
				}
				//map.put("path", path);
				map.put("time", new Date());
				map.put("comment", commList);
				map.put("tags", tagList);
				map.put("annotation", annoList);
				System.out.println(map);
				pDao.insertImage(map);
			}

		}
		return "insta_main";
	}

	// ==============================================================
	// 게시물 FindAll
	public String FindAll() {
		return "insta_register";
	}
}
