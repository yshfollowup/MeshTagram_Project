package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import mvc.service.ReplyDAO;
import mvc.service.SearchDAO;

@Controller
@RequestMapping("/detail")
public class DetailPageController {
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	FollowDAO fDAO;
	@Autowired
	Gson gson;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	SearchDAO sDAO;
	
	
	
	@RequestMapping("/detail.do")
	public String detailPageHandle(@RequestParam MultiValueMap<String, String> vmap, @CookieValue(name="setId", required=false) String setId,
			ModelMap map) {
		System.out.println("그대의 게시물"+vmap);
		// 팔로잉 - 자신이 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(setId);
		map.put("following", followingList);
		
		//한 게시물만 가지고 오기
		List<Map> searchPost = sDAO.findSearchBoard(vmap);
		map.put("myPost", searchPost);
		System.out.println(searchPost+"게시물.");
		
		return "detail_insta";
	}
	
	@RequestMapping(path="/addreply.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String replyAddHandle(@RequestParam Map map) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String str=sdf.format(System.currentTimeMillis());
		map.put("date", str);
		System.out.println(map+(String)map.get("ment")+"댓글을 입력한다.");
		boolean a= rDAO.insertReply(map);
		
		if(a) {
			Gson gson=new Gson();
			
			System.out.println(a);
			return gson.toJson(map);
			
		}else {
			System.out.println(a);
			return "{result : false}";

		}
	}
	
	@RequestMapping(path="/likeBoard.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String likeBoardHandle(@RequestParam Map map) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String str=sdf.format(System.currentTimeMillis());
		map.put("date", str);
		//System.out.println("좋아요 리스트가 들어왔다"+map);
		
		boolean a= rDAO.UpdateLikeReply(map);
		
		List<Map> list=new ArrayList();
		list=rDAO.findAllLike();
		//System.out.println("좋아요 모음!!!!"+list.size());
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			String date=(String)list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			//System.out.println(list3.size()+"카운트 개수");
			count=list3.size();
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", date);
			list2.get(i).put("count", count);
			
		}
		
		if(a) {
			Gson gson=new Gson();
			
			System.out.println(a);
			return gson.toJson(list2);
			
		}else {
			System.out.println(a);
			return "{result : false}";

		}
	}
	@RequestMapping(path="/likeList.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String likeListHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println(map+"좋아요 리스트");
		List<Map> list=new ArrayList();
		list=rDAO.findAllLike();
		//System.out.println("좋아요 모음!!!!"+list.size());
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			String date=(String)list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			//System.out.println(list3.size()+"카운트 개수");
			
			count=list3.size();
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", date);
			list2.get(i).put("count", count);
			
		}
		System.out.println(list2);
		return gson.toJson(list2);
	}
	
	
	@RequestMapping(path="/SearchLikeList.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String SearchListLikeHandle(@RequestParam MultiValueMap<String, String> map) {
		List<String> list = map.get("listId[]");
		System.out.println(map+"모달 리스트를 받았다.");
		List<AccountDTO> result = aDAO.selectSearchLikeListAccount(list);
		System.out.println("아이디리스트이다"+result);
		return gson.toJson(result);
	}
	//============================
	//댓글 리스트 받기
	@RequestMapping(path="/listReply.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyListHandle(@RequestParam MultiValueMap<String, String> map) {
		//System.out.println(map+"댓글 리스트 받ㅇ");
		List<Map> result = rDAO.findAllReply(map);
		System.out.println("댓글리스트이다"+result);
		return gson.toJson(result);
	}
/*	@RequestMapping(path="/deleteReply.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyDeleteHandle(@RequestParam("") Map param) {
		rDAO.deleteReply(param);
		return "{result : true}";
	}*/
}
