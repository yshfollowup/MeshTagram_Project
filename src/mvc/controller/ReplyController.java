package mvc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.service.ReplyDAO;

@Controller
@RequestMapping("/account")
public class ReplyController {
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	Gson gson;
	
/*	@RequestMapping(path="/add.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyAddHandle(@RequestParam("") Map param) {
		rDAO.insertReply(param);
		System.out.println(param);
		return "{result : true}";
	}
	
	@RequestMapping(path="/list.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyListHandle(@RequestParam(name="parent") int parent ) {
		List<Map> result = rDAO.findAllReply();
		System.out.println(result);
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/delete.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyDeleteHandle(@RequestParam("") Map param) {
		rDAO.deleteReply(param);
		return "{result : true}";
	}*/
}
