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

import mvc.model.FollowDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;

@Controller
@RequestMapping("/post")
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
	MongoTemplate template;
	
	
	@RequestMapping("/byEachother.do")
	public String showPostByEachFollowHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		
		return "insta_main";
	}
	
	
	@RequestMapping("/byTag.do")
	public String showPostByTagHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<Map> postList =pDAO.findAllPost();	//저장된 모든 게시물 정보
		List<String> idList = new LinkedList<>();	//모든 아이디들
		List<String> tagList = new LinkedList<>();	//모든 태그들(중복 값 제거)
		List<String> annoList = new LinkedList<>();	//모든 어노테이션들
		
		for(Map post : postList) {
			String objId = post.get("_id").toString();
			String id = post.get("id").toString();
			idList.add(id);
			System.out.println(id);
			
			//tag리스트 뽑고 그에 대한 게시물 보냄(2순위)
			List tag = (List)post.get("tags");
			System.out.println(tag);
			for(int i = 0; i < tag.size(); i++) {
				List<Map> tagResult = pDAO.findPostByTag(tag); 	
				if (!tagList.contains(tag.get(i))) 
					tagList.add((String)tag.get(i));
				if (tagList.get(i).equals(tagResult))
					modelMap.addAttribute("tagResult", tagResult);
			}
			
			List annotation = (List) post.get("annotations"); 
			System.out.println(annotation);
			for(int i = 0; i < annotation.size(); i++) {
				if(!annoList.contains(annotation.get(i)))
					annoList.add((String)annotation.get(i));
			}
		}
		
		System.out.println(idList.size());
		System.out.println(tagList.size());
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("tags", tagList);
		modelMap.addAttribute("annos", annoList);
		return "insta_main";
	}
	
	
	
	@RequestMapping("/byTop5.do")
	public String showPostByTop5Handle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<Map> topFollowerList = aDAO.selectTop5Account(setId);
		
		//팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
		for(Map top : topFollowerList) {
			System.out.println(top.get("id").toString());
			String[] tops = top.get("id").toString().split(",");
			for(String s : tops) {
				List<Map> topResult = pDAO.findPostById(s);
				modelMap.addAttribute("top5Result", topResult);
			}
		}
		
		return "insta_main";
		
	}
	
	
	
	@RequestMapping("/byFollow.do")
	public String showPostByFollowHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
		
		//나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
		for(FollowDTO follower : followerList) {
			for(FollowDTO following : followingList) {
				String myFollower = follower.getOwner();
				String followingMe = following.getTarget();
				List<Map> followerResult = pDAO.findPostById(setId);
				List<Map> followingResult = pDAO.findPostById(setId);
				modelMap.addAttribute("followerResult", followerResult);
				modelMap.addAttribute("followingResult", followingResult);
			}
		}
		
		return "insta_main";
	}
}
