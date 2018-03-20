package mvc.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	SearchDAO sDAO;
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	
	@Autowired
	Gson gson;
	
	@RequestMapping("/search.do")
	public String searchHandle(@RequestParam("id") String id, ModelMap map) {
		AccountDTO aDTO=aDAO.selectOneAccountre(id);
		map.put("aDTO", aDTO);
		
		//이전에 쓴 모든 게시물 정보
		List<Map> allPost = pDAO.findAllPost();
		if(allPost != null) 
		map.put("myPost", allPost);
		// 팔로잉 - 내가 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(id);

		// 팔로워 - 나를 구독하는 사람들
		List<AccountDTO> followerList = new ArrayList<>();
		followerList = aDAO.selectAllAccountFollower(id);
		
		return "insta_search";
	}
	@RequestMapping("/tag.do")
	public String tagHandle(@RequestParam("id") String id, ModelMap map) {
		AccountDTO aDTO=aDAO.selectOneAccountre(id);
		map.put("aDTO", aDTO);
		
		//이전에 쓴 모든 게시물 정보
		List<Map> allPost = pDAO.findAllPost();
		if(allPost != null) 
		map.put("myPost", allPost);
		// 팔로잉 - 내가 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(id);

		// 팔로워 - 나를 구독하는 사람들
		List<AccountDTO> followerList = new ArrayList<>();
		followerList = aDAO.selectAllAccountFollower(id);
		
		return "insta_search";
	}
	@RequestMapping(path="/autocom.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	@ResponseBody
	public String autoHandle(@RequestParam MultiValueMap<String, String> vmap) {
		System.out.println(vmap);
		Gson gson =new Gson();
		String tag=vmap.getFirst("tag");
		String idsh=vmap.getFirst("idsh").replaceAll("@", "");
		String comm=vmap.getFirst("comm");
		System.out.println("["+tag+"]...["+idsh+"]..."+comm);
		List<Map> SearchList = new ArrayList<>();
		if(tag != "") {
			System.out.println("검색성공1");
			SearchList= sDAO.findLikeTag(tag);
		} 
		if(idsh!= "") {
			System.out.println("검색성공2");
			SearchList = sDAO.searchName(idsh);
		}
		if(comm!= "") {
			System.out.println("검색성공3");
			SearchList = sDAO.searchIdNameIntro(comm);
		}
		System.out.println(SearchList.toString());
		return gson.toJson(SearchList);
	}
}
