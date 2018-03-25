package mvc.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
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
	PostDAO pDAO;
	@Autowired
	FollowDAO fDAO; 
	
	@Autowired
	Gson gson;
	
	//팔로우 인덱스 페이지
	@RequestMapping("/index.do")
	public String indexHandle(@CookieValue(name="setId", required=false) String id, ModelMap map) {
		// 팔로잉 - 내가 구독한 사람들
		List<AccountDTO> followingList = aDAO.selectAllAccountFollowing(id);

		// 팔로워 - 나를 구독하는 사람들
		List<AccountDTO> followerList = aDAO.selectAllAccountFollower(id);
		
		// 팔로우 top5 리스트 (나와 내가 팔로우한 사람 제외)
		List<AccountDTO> top5List = aDAO.selectTop5Account(id);
		
		// 알수도 있는 사람 리스트 - 맞팔한 친구의 다른 맞팔 유저들
		List<AccountDTO> recomList = new ArrayList<>();
		recomList.addAll(top5List);
		
		List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(id);
		List<AccountDTO> oneFOAFList = null;
		for (AccountDTO oneFriend : eachOtherList) {
			oneFOAFList = aDAO.selectFollowEachOther(oneFriend.getId());
			logic:
			for (AccountDTO oneFOAF : oneFOAFList) {
				if (oneFOAF.getId().equals(id)) {
					continue;
				}
				for (AccountDTO oneFollowing : followingList) {
					if (oneFOAF.getId().equals(oneFollowing)) {
						continue logic;
					}
				}
//				for (AccountDTO oneRecom : recomList) {
//					if (oneFOAF.getId().equals(oneRecom)) {
//						continue logic;
//					}
//				}
				recomList.add(oneFOAF);
			}
		}

		// 추천 리스트() 중복제거 and 셔플
        List<AccountDTO> distinctList = new ArrayList<>();
        for (int i=0; i<recomList.size(); i++) {
        	if(distinctList.size()==0) {
        		distinctList.add(recomList.get(i));
        		continue;
        	}
        	boolean isDistinct = false;
            for(int j=0; j<distinctList.size(); j++) {
            	if (distinctList.get(j).getId().equals((recomList.get(i).getId()))) {
            		isDistinct = true;
            	}
            }
            if(!isDistinct) {
        		distinctList.add(recomList.get(i));
            }
        }
        recomList = distinctList;
		Collections.shuffle(recomList);
		
		// 추천 리스트의 게시글 불러오기(최신글만)
		List<Map> latestList = new LinkedList<>();
		for (AccountDTO boardRecom : recomList) {
			List<Map> bList = pDAO.findPostById(boardRecom.getId());
			if (bList.size()==0) {
				
			} else {
				Map bMap = bList.get(0);
				latestList.add(bMap);
			}
		}
		
		//
		map.put("recommend", recomList);
		map.put("following", followingList);
		map.put("follower", followerList);
		map.put("latest", latestList);
		
		return "insta_follow";
	}
	@RequestMapping("/all.do")
	public String indexAjaxHandle(@CookieValue(name="setId",required=false) String id, ModelMap map) {
		//전체리스트 및 팔로우 리스트
		List<AccountDTO> allFollowMember = aDAO.selectAllmemberCheck(id);
		
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
	
	@RequestMapping(path="/followListSomeone.do", produces="application/json;charset=utf-8", method=RequestMethod.GET)
	@ResponseBody
	public String SearchListLikeHandle(@RequestParam MultiValueMap<String, String> map) {
		String owner = map.getFirst("setId");
		System.out.println(map+"모달 리스트를 받았다.");
		List<Map> result = fDAO.selectFollwerProfileId(owner);
		List<Map> result2 = fDAO.selectFollwingListId(result);
		System.out.println("팔로우 리스트를 받았다."+result2);
		return gson.toJson(result2);
	}
}
