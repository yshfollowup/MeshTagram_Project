package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.model.FollowDTO;
import mvc.service.FollowDAO;
import mvc.service.MessengerDAO;

@Controller
@RequestMapping("/direct")
public class MessengerController {
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	FollowDAO fDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping("/index.do")
	public String mainHandle() {
		return "dm_page";
	}
	
	@RequestMapping(path="/insertMessage.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String insertMessageHandle(@RequestParam(name="dmtxt") Map param) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = sdf.format(System.currentTimeMillis());
		param.put("date", str);
		boolean rst = true;
		if (rst) {
			Map result = mDAO.insertMessage(param);
			return gson.toJson(result);			
		}else {
			return "{result : false}";
		}
	}
	
	@RequestMapping(path="/showMessage.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showMessageHandle() {
		List<Map> result = mDAO.findAllMessage();
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/showFollowing.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showFollowingHandle(@CookieValue(name="setId", required=false) String setId) {
		List<FollowDTO> result = fDAO.selectFollwing(setId);
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/showLike.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showLikeHandle() {
		List<Map> result = mDAO.findAllMessageLike();
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/deleteLike.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteLikeHandle(Map param) {
		mDAO.deleteMessageLike(param);
		return gson.toJson(param);
	}
}
