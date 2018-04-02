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
import mvc.model.FollowDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;
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
	ReplyDAO rDAO;
	
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

		AccountDTO aDTO = aDAO.selectOneAccountre(id);
		map.put("aDTO", aDTO);
		
		//이전에 쓴 모든 게시물 정보
		List<Map> searchPost = sDAO.findSearchTag(id);
		map.put("myPost", searchPost);
		System.out.println(searchPost+"게시물.");

		// 팔로잉 - 자신이 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(id);
		map.put("following", followingList);

		System.out.println(searchPost+"검색한 게시물을 받ㅇ");
		return "insta_search";
	}
	//========
	//검색하고 나서 댓글 리스트 받아오기
	@RequestMapping(path="/ReList.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String ReplyListHandle(@RequestParam MultiValueMap<String, String> vmap) {
				System.out.println(vmap+"댓글 리스트 받ㅇ");
				List<Map> result = rDAO.findAllReply(vmap);
				
				int count=0;
				List<Map> list2=new ArrayList();
				//list2=rDAO.findAllLike();
				long ct=System.currentTimeMillis();

				for(int i=0; i<result.size(); i++) {
					List<Map> list3=new ArrayList();
					String boardId=(String)result.get(i).get("boardId");
					String id=(String)result.get(i).get("id");
					Date date=(Date)result.get(i).get("date");
					String ment=(String)result.get(i).get("ment");
					list3=rDAO.findReplyBoardId(boardId);
					//System.out.println(list3.size()+"카운트 개수");
					
					long dt=date.getTime();
					long prv=ct-dt;
					prv /=1000;
					String rt="";
					if(prv>0 &&  prv < 1000L*60) {
						//몇분전
						System.out.println(prv+"..."+(int)prv/(60)+"전전전");
						rt=(long)prv/(60)+"분전";
					}else if(prv>1000L*60 && prv < 1000L*60*60) {
						//몇 시간전
						rt=prv/(60*60)+"시간";
				}else if(prv>1000L*60*60 && prv <1000L*60*60*24) {
					// 몇 일전
					rt=prv/(60*60*24)+"일";
				}
					count=list3.size();
					result.get(i).put("boardId", boardId);
					result.get(i).put("id",id);
					result.get(i).put("date", rt);
					result.get(i).put("ment", ment);
					result.get(i).put("count", count);
				}
				System.out.println("댓글리스트이다"+result+result.size());
				return gson.toJson(result);
	}
	
	@RequestMapping(path="/likecountList.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String likeListHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println(map+"좋아요 리스트");
		List<Map> list=new ArrayList();
		list=rDAO.findAllLike();
		//System.out.println("좋아요 모음!!!!"+list.size());
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		long ct=System.currentTimeMillis();

		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			Date date=(Date) list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			//System.out.println(list3.size()+"카운트 개수");
			long dt=date.getTime();
			long prv=ct-dt;
			prv /=1000;
			String rt="";
			if(prv>0 &&  prv < 1000L*60) {
				//몇분전
				System.out.println(prv+"..."+(int)prv/(60)+"전전전");
				rt=(long)prv/(60)+"분전";
			}else if(prv>1000L*60 && prv < 1000L*60*60) {
				//몇 시간전
				rt=prv/(60*60)+"시간";
		}else if(prv>1000L*60*60 && prv <1000L*60*60*24) {
			// 몇 일전
			rt=prv/(60*60*24)+"일";
		}
			
			
			count=list3.size();
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", rt);
			list2.get(i).put("count", count);
			
		}
		System.out.println(list2);
		return gson.toJson(list2);
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
		//추천계정 받기
		@RequestMapping(path = "/reomid.do", produces = "application/json;charset=utf-8")
		@ResponseBody
		public String recomidHandle(@RequestParam MultiValueMap<String,String> vmap) {
			Gson gson=new Gson();
			String targetId = vmap.getFirst("targetId");
			List<Map> target=fDAO.selectFollwingProfileId(targetId);
			System.out.println(target);
			
			return gson.toJson(target);
	}
		
		//추천계정 받기
		@RequestMapping(path = "/checkFollow.do", produces = "application/json;charset=utf-8")
		@ResponseBody
		public String followSearchidHandle(@RequestParam MultiValueMap<String,String> vmap) {
			Gson gson=new Gson();
			String setId = vmap.getFirst("setId");
			List<Map> target=fDAO.selectFollwingProfileId(setId);
			System.out.println(target);
			
			return gson.toJson(target);
	}
		
		
}
