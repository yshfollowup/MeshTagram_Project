package mvc.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
		// 팔로우 top5 리스트
		List<AccountDTO> top5List = aDAO.selectTop5Account(id);
		System.out.println(top5List);
		// 나 제외, 내가 팔로우한 사람 제외하고 top5 (id, cnt, id, pass, email, name, phone, profile, birth, intro, score 로 구성된 map 의 list)
		
		// 알수도 있는 사람 리스트 - 맞팔한 친구의 다른 맞팔 유저들
		List<AccountDTO> recomList = new ArrayList<>();
		List<AccountDTO> myFOAFList = aDAO.selectFOAF(id);
		Iterator<AccountDTO> itr = myFOAFList.iterator();
		while(itr.hasNext()) { // 맞팔한 친구들의 맞팔 리스트 순환하면서 '나' 지우고, 최종 추천 리스트에 저장
			List<AccountDTO> oneFOAFList = aDAO.selectFOAF(itr.next().getId());
			oneFOAFList.remove(aDAO.selectOneAccountre(id));
			recomList.addAll(oneFOAFList);
		}
		recomList.addAll(top5List);
		Collections.shuffle(recomList);
		System.out.println(recomList);
		
		// 팔로잉 - 내가 구독한 사람들
		List<AccountDTO> followingList = aDAO.selectAllAccountFollowing(id);

		// 팔로워 - 나를 구독하는 사람들
		List<AccountDTO> followerList = aDAO.selectAllAccountFollower(id);
		
		//
		map.put("recommend", recomList);
		map.put("following", followingList);
		map.put("follower", followerList);

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
