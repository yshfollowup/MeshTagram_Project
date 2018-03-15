package mvc.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.PostDAO;

@Controller
@RequestMapping("/follow")
public class FollowController {
	@Autowired
	AccountDAO adao;
	@Autowired
	PostDAO mdao;
	@Autowired
	FollowDAO fdao;
	
	@Autowired
	Gson gson;
	@RequestMapping("index.do")
	public String indexHandle(@RequestParam ("id") String id,ModelMap map) {
		List<Map> list= new ArrayList<>();
		
		list=adao.selectAllAccount(id);
		
		map.put("follow", list);
		return "insta_follow";
	}
	@RequestMapping("/insert.do")
	public String insertHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String me=vmap.getFirst("me");
		String target=vmap.getFirst("target");
		
		int r=fdao.insertFollow(me, target);
		if(r==0) {
			System.out.println("[SERVER]: follow failed"+r);
			return "insta_follow";
		}
		System.out.println("[SERVER]: follow success");
		
		return "insta_follow";
	}
}
