package mvc.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

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
	PostDAO dao;

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

			
			List<File> result = new ArrayList<>();
			for (MultipartFile file : files) {
				String str = sdf.format(System.currentTimeMillis());
				Long size = file.getSize();
				if (size < (1024 * 1024 * 10)) {
					target = new File(path, str + ".png");
					System.out.println(file + comm + id);
					result.add(target);
					
					try {
						file.transferTo(target);
						rst = true;
					} catch (Exception e) {
						rst = false;
					}
				}
			}
			
			if (rst) {
				//업로드한 파일의 갯수만큼 li2에 저장
				List<List> li2 = new ArrayList<>();
				for (File result2 : result) {
					li2.add((List) result2);
				}
				Map map = new LinkedHashMap<>();
				map.put("writer", id);
				map.put("image", "/" + li2);
				System.out.println();
				map.put("time", new Date());
				map.put("comment", comm);
				map.put("tags", li);
				System.out.println(map);
				// template.insert(map, "instagram");
				dao.insertImage(map);
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
