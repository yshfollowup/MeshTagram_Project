package mvc.controller;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import mvc.model.AccountDTO;
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
		//List<AccountDTO> userList = aDAO.selectAllAccountNotMe(setId);
		List<Map> postList =pDAO.findAllPost();
		//List<Map> replyList = rDAO.findAllReply();
		//List<Map> messageList = mDAO.findAllMessage();
		
		List<String> objIdList = new LinkedList<>();
		List<String> idList = new LinkedList<>();
		List<String> tagList = new LinkedList<>();
		for(Map post : postList) {
			String objId = post.get("_id").toString();
			objIdList.add(objId);
			System.out.println(objId);
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
		}
		System.out.println(objIdList.size());
		System.out.println(idList.size());
		System.out.println(tagList.size());
		modelMap.addAttribute("objIds", objIdList);
		modelMap.addAttribute("ids", idList);
		modelMap.addAttribute("tags", tagList);
		return "insta_main";
	}
}
