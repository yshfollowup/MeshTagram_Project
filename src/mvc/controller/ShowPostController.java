package mvc.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.model.AccountDTO;
import mvc.model.FollowDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;
import mvc.service.SeperatorService;

@Controller
public class ShowPostController {
	@Autowired
	AccountDAO aDAO;
	@Autowired
	FollowDAO fDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	SeperatorService ss;

	
	
	@RequestMapping("/postByEachOther.do")
	public String showPostByEachFollowHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(setId);
		//맞팔되어있는 친구 목록 뽑은 뒤 그에 대한 게시물 보냄(1순위)
		for(AccountDTO eachfollow : eachOtherList) {
			String id = eachfollow.getId();
			if(id != null) {
				List<Map> eachResult = pDAO.findPostById(id);
				modelMap.addAttribute("eachResult", eachResult);
				System.out.println(eachResult.size());				
			}
		}
		return "insta_main";
	}
	
	
	@RequestMapping("/postByTag.do")
	public String showPostByTagHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<List<String>> list = ss.sendSeperInfo();
		List<String> idList = list.get(0);
		List<String> tagList = list.get(1);
		List<String> annoList = list.get(2);
		//관심사(hashtag)가 같은 사람을 뽑아 그에 대한 게시물 보냄(2순위)
		for(String tag : tagList) {
			if(tag != null) {
				List<Map> tagResult = pDAO.findPostByTag(tag);
				modelMap.addAttribute("tagResult", tagResult);
				System.out.println(tagResult.size());
			}
		}
		
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("tags", tagList);
		modelMap.addAttribute("annos", annoList);
		return "insta_main";
	}
	
	
	
	@RequestMapping("/postByTop5.do")
	public String showPostByTop5Handle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<AccountDTO> topFollowerList = aDAO.selectTop5Account(setId);
		
		//팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
		for(AccountDTO top : topFollowerList) {
			System.out.println(top.getId());
			String[] tops = top.getId().split(",");
			if(tops.length != 0) {
				for(String s : tops) {
					List<Map> topResult = pDAO.findPostById(s);
					modelMap.addAttribute("top5Result", topResult);
					System.out.println(topResult.size());
				}				
			}
		}
		
		return "insta_main";
		
	}
	

	@RequestMapping("/postByFollow.do")
	public String showPostByFollowHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
		
		//나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
		for(FollowDTO follower : followerList) {
			for(FollowDTO following : followingList) {
				String myFollower = follower.getOwner();
				String followingMe = following.getTarget();
				if(myFollower != null || followingMe != null) {
					List<Map> followerResult = pDAO.findPostById(myFollower);
					List<Map> followingResult = pDAO.findPostById(followingMe);
					modelMap.addAttribute("followerResult", followerResult);
					modelMap.addAttribute("followingResult", followingResult);
					System.out.println(followerResult.size()+" / "+followingResult.size());					
				}
			}
		}
		
		return "insta_main";
	}
}
