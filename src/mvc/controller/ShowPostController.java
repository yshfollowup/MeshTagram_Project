package mvc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

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
		List<Map> userList = aDAO.selectAllmemberCheck(setId);
		List<Map> postList =pDAO.findAllPost();
		List<Map> replyList = rDAO.findAllReply();
		List<Map> messageList = mDAO.findAllMessage();
		
		for(Map user : userList) {
			String id = (String)user.get("id");
		}
		for(Map post : postList) {
			String id = (String)post.get("id");
		}
		for(Map reply : replyList) {
			String id = (String)reply.get("id");
		}
		for(Map message : messageList) {
			String id = (String)message.get("id");
		}
		
		return "";
	}
}
