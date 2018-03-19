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
		String user1 = vmap.getFirst("user1");
		String user2 = vmap.getFirst("user2");
		
		// 팔로우가 존재한다면 - 그냥 리턴
		if(!fDAO.selectOneFollow(user1, user2)) {
			System.out.println("[SERVER]: follow exist");
			return "redirect:/follow/index.do";
		}
		
		// 반대방향 팔로우가 존재한다면 - following 업데이트 하고 리턴
		if(!fDAO.selectOppositeFollow(user1, user2)) {
			System.out.println("[SERVER]: update following");
			int r3 = fDAO.updateFollowUser2(user1);
			if(r3==0) {
				System.out.println("[SERVER]: update failed "+r3);
				return "insta_follow";
			}
			System.out.println("[SERVER]: update success");
			return "redirect:/follow/index.do";
		}
		
		// 팔로우 로우가 아예 없다면 - follow 로우 새로 생성 후 업데이트까지
		System.out.println("[SERVER]: insert follow, me->"+user1+" | target->"+user2);
		int r= fDAO.insertFollow(user1, user2);
		if(r==0) {
			System.out.println("[SERVER]: follow failed "+r);
			return "insta_follow";
		}
		System.out.println("[SERVER]: follow success");
		
		System.out.println("[SERVER]: update following");
		int r2 = fDAO.updateFollowUser1(user1);
		if(r2==0) {
			System.out.println("[SERVER]: update failed "+r);
		}
		System.out.println("[SERVER]: update success");
		return "redirect:/follow/index.do";
	}
	
	@RequestMapping("/delete.do")
	public String deleteHandle(@RequestParam MultiValueMap<String,String> vmap) {
		String user1 = vmap.getFirst("user1");
		String user2 = vmap.getFirst("user2");
		
		if(fDAO.selectOneFollow(user1, user2) && fDAO.selectOppositeFollow(user1, user2)) {
			System.out.println("[SERVER]: follow exist");
			return "redirect:/follow/index.do";
		}
		
		System.out.println("[SERVER]: delete follow, me->"+user1+" | target->"+user2);
		
		int r= fDAO.deleteFollow(user1, user2);
		if(r==0) {
			System.out.println("[SERVER]: delete failed "+r);
			return "insta_follow";
		}
		System.out.println("[SERVER]: delete success");
		
		return "redirect:/follow/index.do";
	}
}
