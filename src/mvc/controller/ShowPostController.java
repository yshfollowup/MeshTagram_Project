package mvc.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	
	@RequestMapping("/showPost.do")
	public String showPostHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<Map> postList =pDAO.findAllPost();
		List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
		List<AccountDTO> allFollower =  aDAO.selectAllAccountFollower(setId);
		
		List<String> idList = new LinkedList<>();
		List<String> tagList = new LinkedList<>();
		List<String> annoList = new LinkedList<>();
		
		for(Map post : postList) {
			String objId = post.get("_id").toString();
			String id = post.get("id").toString();
			idList.add(id);
			System.out.println(id);
			
			List tag = (List)post.get("tags");
			System.out.println(tag);
			for(int i = 0; i < tag.size(); i++) {
				if (!tagList.contains(tag.get(i))) {
					tagList.add((String)tag.get(i));
				}
			}
			
			/*List annotation = (List) post.get("annotations"); 
			System.out.println(annotation);
			for(int i = 0; i < annotation.size(); i++) {
				if(!annoList.contains(annotation.get(i)))
					annoList.add((String)annotation.get(i));
			}*/
			
			
			for(FollowDTO follwers : followerList) {
				String targetMe = follwers.getTarget();
				for(FollowDTO followings : followingList) {
					String myTarget = followings.getOwner();
					if (targetMe.equals(myTarget)) 
						modelMap.addAttribute("rank", 1);
					else if (targetMe.equals(myTarget) && !(myTarget.equals(targetMe)))
						modelMap.addAttribute("rank", 2);
					else if (myTarget.equals(targetMe) && !(targetMe.equals(myTarget)))
						modelMap.addAttribute("rank", 3);
					else
						modelMap.addAttribute("rank", 4);
				}					
			}
		}
		
		
		System.out.println(idList.size());
		System.out.println(tagList.size());
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("tags", tagList);
		modelMap.addAttribute("annos", annoList);
		return "insta_main";
	}
}
