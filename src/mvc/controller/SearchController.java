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
	FollowDAO fDAO;
	
	@Autowired
	Gson gson;
	@RequestMapping("/searchtag.do")
	public String searchTagHandle(@RequestParam MultiValueMap<String,String> vmap, ModelMap map) {
		System.out.println(vmap+"태그 페이지 ");
		
		String tags=vmap.getFirst("tags");
		List<Map> List=new ArrayList();
		
		List=sDAO.findLikeTag(tags);
		System.out.println(List.toString());
		int cnt=List.size();
		
		map.put("title", tags);
		map.put("tagList", List);
		map.put("count", cnt);
		return "insta_searchTag";
	}
	@RequestMapping("/search.do")
	public String searchHandle(@RequestParam("id") String id, ModelMap map) {
		System.out.println(id+"검색한다.");
		AccountDTO aDTO=aDAO.selectOneAccountre(id);
		map.put("aDTO", aDTO);
		
		//이전에 쓴 모든 게시물 정보
		List<Map> searchPost = sDAO.findSearchTag(id);
		map.put("myPost", searchPost);
		// 팔로잉 - 자신이 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(id);
		map.put("following", followingList);

		// 팔로워 - 자신을 구독하는 사람들
		List<AccountDTO> followerList = new ArrayList<>();
		followerList = aDAO.selectAllAccountFollower(id);
		map.put("follower", followerList);
		
		System.out.println(searchPost+"검색한 게시물을 받ㅇ");
		return "insta_search";
	}
	@RequestMapping(path="/autocom.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	@ResponseBody
	public String autoHandle(@RequestParam MultiValueMap<String, String> vmap) {
		Gson gson =new Gson();
		String tag=vmap.getFirst("tag");
		String idsh=vmap.getFirst("idsh").replaceAll("@", "");
		String comm=vmap.getFirst("comm");
		//System.out.println("["+tag+"]...["+idsh+"]..."+comm);
		List<Map> SearchList = new ArrayList<>();
		if(tag != "") {
			System.out.println("검색성공1");
			SearchList= sDAO.findLikeTag(tag);
			int cnt=SearchList.size();
			System.out.println(SearchList.toString());
			for(int i=0; i<SearchList.size();i++) {
				SearchList.get(i).put("count", cnt);
			}
			return gson.toJson(SearchList);
		} 
		if(idsh!= "") {
			System.out.println("검색성공2");
			SearchList = sDAO.searchName(idsh);
		}
		if(comm!= "") {
			System.out.println("검색성공3");
			SearchList = sDAO.searchIdNameIntro(comm);
		}
		//System.out.println(SearchList.toString());
		return gson.toJson(SearchList);
	}
	//팔로우 추가
		@RequestMapping(path = "/check.do", produces = "application/json;charset=utf-8")
		@ResponseBody
		public String insertHandle(@RequestParam MultiValueMap<String,String> vmap) {
			String owner = vmap.getFirst("owner");
			String target = vmap.getFirst("target");
			System.out.println(owner+target);
			if(!fDAO.selectOneFollow(owner, target)) { // 팔로우가 존재한다면 - 그냥 리턴
				System.out.println("[SERVER]: follow exist");
				return "{\"result\": false,\"status\":\"no\"}";
			} else {  // 팔로우 존재하지 않는다면 하나 생성
				System.out.println("팔로우 안함");
				return "{\"result\": true,\"status\":\"ok\"}";
			}		
	}
}
