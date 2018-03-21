package mvc.controller;

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

@Controller
@RequestMapping("/follow")
public class FollowController {
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO mDAO;
	@Autowired
	FollowDAO fDAO; 
	
	@Autowired
	Gson gson;
	
	//팔로우 인덱스 페이지
	@RequestMapping("/index.do")
	public String indexHandle(@CookieValue(name="setId", required=false) String id, ModelMap map) {
				//아이디 값으로 내정보 받기
				AccountDTO MeList = aDAO.selectOneAccountre(id);
				//전체리스트 및 팔로우 리스트
				List<Map> allFollowMember= new ArrayList();
				allFollowMember = aDAO.selectTop5Account(id);

				String user1=(String) allFollowMember.get(0).get("TARGET");
				String user2=(String) allFollowMember.get(1).get("TARGET");
				String user3=(String) allFollowMember.get(2).get("TARGET");
				String user4=(String) allFollowMember.get(3).get("TARGET");
				String user5=(String) allFollowMember.get(4).get("TARGET");
				
				List<Map> FollowMember= new ArrayList();
				FollowMember = aDAO.selectTop5Profile(id,user1,user2,user3,user4,user5);
				System.out.println(user1+user2+user3+user4+user5);
				System.out.println(FollowMember);

				// 팔로잉 - 내가 구독한 사람들
				List<AccountDTO> followingList = new ArrayList();
				followingList = aDAO.selectAllAccountFollowing(id);
				
				// 팔로워 - 나를 구독하는 사람들
				List<AccountDTO> followerList = new ArrayList<>();
				followerList = aDAO.selectAllAccountFollower(id);
				
				map.put("aDTO", MeList);
				map.put("following", followingList);
				map.put("follower", followerList);
				map.put("allmember", FollowMember);
		
		return "insta_follow";
	}
	@RequestMapping("/all.do")
	public String indexAjaxHandle(@CookieValue(name="setId",required=false) String id, ModelMap map) {
		//전체리스트 및 팔로우 리스트
		List<Map> allFollowMember= new ArrayList();
		allFollowMember = aDAO.selectAllmemberCheck(id);
		
		map.put("member", allFollowMember);
		
		return"insta_allfollow";
	}
	
	//팔로우 추가
	@RequestMapping(path = "/insert.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String insertHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String owner = vmap.getFirst("owner");
		String target = vmap.getFirst("target");
		System.out.println(owner+target);
		if(!fDAO.selectOneFollow(owner, target)) { // 팔로우가 존재한다면 - 그냥 리턴
			System.out.println("[SERVER]: follow exist");
			return "{\"result\": false,\"status\":\"no\"}";
		} else {  // 팔로우 존재하지 않는다면 하나 생성
			System.out.println("[SERVER]: insert follow, me->"+owner+" | target->"+target);
			int r= fDAO.insertFollow(owner, target);
			if(r==0) {
				System.out.println("[SERVER]: follow failed "+r);
				return "insta_follow";
			}
			System.out.println("[SERVER]: follow success");
		}		
		return "{\"result\": true,\"status\":\"ok\"}";
}
	//팔로우 삭제
	@RequestMapping(path= "/delete.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String owner = vmap.getFirst("owner");
		String target = vmap.getFirst("target");
		System.out.println(owner+target+"삭제삭제");
			System.out.println("[SERVER]: delete follow, me->"+owner+" | target->"+target);
			int r= fDAO.deleteFollow(owner, target);
			if(r==0) {
				System.out.println("[SERVER]: delete failed "+r);
				System.out.println("[SERVER]: follow not exist");
				return "insta_follow";
			}else {
				System.out.println("[SERVER]: delete success");
		}
		
		return "{\"result\": true,\"status\":\"ok\"}";
		
	}
}
