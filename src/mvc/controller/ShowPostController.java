package mvc.controller;

import java.util.LinkedHashMap;
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
	MongoTemplate template;
	
	
	@RequestMapping("/showPost.do")
	public String showPostHandle
		(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<Map> postList =pDAO.findAllPost();	//저장된 모든 게시물 정보
		List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
		List<AccountDTO> allFollower =  aDAO.selectAllAccountFollower(setId);
		
		List<String> idList = new LinkedList<>();	//모든 아이디들
		List<String> tagList = new LinkedList<>();	//모든 태그들(중복 값 제거)
		List<String> annoList = new LinkedList<>();	//모든 어노테이션들
		
		
		for(Map post : postList) {
			String objId = post.get("_id").toString();
			String id = post.get("id").toString();
			idList.add(id);
			System.out.println(id);
			
			List tag = (List)post.get("tags");
			System.out.println(tag);
			for(int i = 0; i < tag.size(); i++) {
				List<Map> tagResult = pDAO.findPostByTag(tag); 	//결과들 보냄
				if (!tagList.contains(tag.get(i))) 
					tagList.add((String)tag.get(i));
				if (tagList.get(i).equals(tagResult))
					modelMap.addAttribute("tagResult", tagResult);
			}
			
			/*List annotation = (List) post.get("annotations"); 
			System.out.println(annotation);
			for(int i = 0; i < annotation.size(); i++) {
				if(!annoList.contains(annotation.get(i)))
					annoList.add((String)annotation.get(i));
			}*/
			
		}
		
		System.out.println(idList.size());
		System.out.println(tagList.size());
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("tags", tagList);
		modelMap.addAttribute("annos", annoList);
		return "insta_main";
	}
}
