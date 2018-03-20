package mvc.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.PostDAO;
import mvc.service.SearchDAO;

@Controller
public class SearchController {
	@Autowired
	PostDAO pDAO;
	@Autowired
	SearchDAO sDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping("/search.do")
	public String searchHandle(@CookieValue(name="setId", required=false) String id, ModelMap map) {
		
		
		
		return "insta_search";
	}
	@RequestMapping(path="/autocom.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String autoHandle(@RequestParam MultiValueMap<String, String> vmap) {
		System.out.println(vmap);
		Gson gson =new Gson();
		String tag=vmap.getFirst("tag");
		String idsh=vmap.getFirst("idsh");
		String comm=vmap.getFirst("comm");
		System.out.println(tag+"..."+idsh+"..."+comm);
		List<Map> SearchList = new ArrayList<>();
		if(tag!=null) {
			SearchList= sDAO.findLikeTag(tag);
		}else if(idsh !=null) {
			SearchList = sDAO.searchName(idsh);
		}else if(comm != null) {
			SearchList = sDAO.searchIdNameIntro(comm);
		}
		System.out.println(SearchList.toString());
		return gson.toJson(SearchList);
	}
}
