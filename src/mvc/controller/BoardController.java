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
		String[] comment = comm.split("\\s");
		List<String> li = new ArrayList<>();
		for (String tag : comment) {
			if (tag.startsWith("#")) {
				li.add(tag);
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
				map.put("comment", comm);
				map.put("tags", li);
				System.out.println(map);
				// template.insert(map, "instagram");
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
