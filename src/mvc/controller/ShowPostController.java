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
		List<Map> userList = aDAO.selectAllmemberCheck(setId);
		List<Map> postList =pDAO.findAllPost();
		List<Map> replyList = rDAO.findAllReply();
		List<Map> messageList = mDAO.findAllMessage();
		
		List<String> tagList = new LinkedList<>();
		for(Map post : postList) {
			String objId = post.get("_id").toString();
			System.out.println(objId);
			String id = post.get("id").toString();
			System.out.println(id);
			List tag = (List)post.get("tags");
			System.out.println(tag);
			for(int i = 0; i < tag.size(); i++) {
				 if (!tagList.contains(tag.get(i))) {
	                tagList.add((String)tag.get(i));
	            }
			}
		}
		
		List<String> idList = new LinkedList<>();
		for(Map user : userList) {
			String id = (String) user.get("id");
			System.out.println(id);
		}
		
		
		System.out.println(tagList.size());
		//modelMap.addAttribute("tags", tagList);
		return "";
	}
}
