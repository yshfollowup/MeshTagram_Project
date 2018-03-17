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
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("index.do")
	public String indexHandle(@CookieValue(name="setId", required=false) String id, ModelMap map) {
		// 전체 회원 리스트
		List<AccountDTO> memberList = new ArrayList<>();
		memberList = aDAO.selectAllAccountNotMe(id);
		
		// 팔로잉 - 내가 구독한 사람들
		List<AccountDTO> followingList = new ArrayList<>();
		followingList = aDAO.selectAllAccountFollowing(id);
		
		// 팔로워 - 나를 구독하는 사람들
		List<AccountDTO> followerList = new ArrayList<>();
		followerList = aDAO.selectAllAccountFollower(id);
		
		map.put("member", memberList);
		map.put("following", followingList);
		map.put("follower", followerList);
		
		return "insta_follow";
	}
	
	@RequestMapping("/insert.do")
	public String insertHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String me = vmap.getFirst("me");
		String target = vmap.getFirst("target");
		System.out.println("[SERVER]: insert follow, me->"+me+" | target->"+target);
		
		int r= fDAO.insertFollow(me, target);
		if(r==0) {
			System.out.println("[SERVER]: follow failed "+r);
			return "insta_follow";
		}
		System.out.println("[SERVER]: follow success");
		
		return "insta_follow";
	}
	
	@RequestMapping("/delete.do")
	public String deleteHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String me = vmap.getFirst("me");
		String target = vmap.getFirst("target");
		System.out.println("[SERVER]: delete follow, me->"+me+" | target->"+target);
		
		int r= fDAO.deleteFollow(me, target);
		if(r==0) {
			System.out.println("[SERVER]: delete failed "+r);
			return "insta_follow";
		}
		System.out.println("[SERVER]: delete success");
		
		return "insta_follow";
	}
}
