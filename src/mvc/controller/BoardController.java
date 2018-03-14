package mvc.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
	//=======================================
	//게시물 업로드
	@RequestMapping("/uploadp.do")
	public String uploadHandle(@RequestParam("photo") MultipartFile file,
			  HttpServletRequest req,@RequestParam("comment") String comm, @RequestParam("id") String id) throws IOException, InterruptedException {
		if(!file.isEmpty()) {
		String path=ctx.getRealPath("/");
		SimpleDateFormat sdf= new SimpleDateFormat("yyyMMddHHmmss");
		String str=sdf.format(System.currentTimeMillis());
		File target= new File(path, str+".png");
		boolean rst;
		try {
			
			file.transferTo(target);
			rst=true;
		}catch(Exception e) {
			rst=false;
		}
		
		String[] comment=comm.split("\\s");
		List<String> li=new ArrayList<>();
		for(String tag : comment) {
			if(tag.startsWith("#")) {
				li.add(tag);
			}
		}
		if(rst) {
		Map map=new LinkedHashMap<>();
		System.out.println(map);
		map.put("writer", id);
		map.put("image","/"+ target.getName());
		map.put("time", str);
		map.put("comment", comm);
		map.put("tags", li);
		//template.insert(map, "instagram");
		dao.insertImage(map);
		}
		
		}
		return "insta_register";
	}
	//==============================================================
	//게시물 FindAll
	public String FindAll() {
		return"insta_register";
	}
}
