package mvc.controller;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.AccountDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;

@Controller
public class ShowPostController {
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	MessengerDAO mDAO;
	
	
	@RequestMapping("/showPost.do")
	public String showPostHandle(@CookieValue(name="setId", required=false) String setId, ModelMap modelMap) {
		List<Map> postList =pDAO.findAllPost();
		
		List<String> idList = new LinkedList<>();
		List<Map> postCombinebyId = new LinkedList<>();
		List<String> tagList = new LinkedList<>();
		List<Map> postCombinebyTag = new LinkedList<>();
		List<String> annoList = new LinkedList<>();
		List<Map> postCombinebyAnno = new LinkedList<>();
		
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
			
			String tags = tagList.toString();
			System.out.println(tags);
		}
		
		
		
		System.out.println(idList.size());
		System.out.println(postCombinebyId.size());
		System.out.println(tagList.size());
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("postbyId", postCombinebyId);
		modelMap.addAttribute("tags", tagList);
		modelMap.addAttribute("postbyTag", postCombinebyTag);
		modelMap.addAttribute("annos", annoList);
		modelMap.addAttribute("postbyAnno", postCombinebyAnno);
		return "insta_main";
	}
}
