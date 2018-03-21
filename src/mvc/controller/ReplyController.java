package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.service.ReplyDAO;

@Controller
public class ReplyController {
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping(path="/addreply.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String replyAddHandle(@RequestParam Map map) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String str=sdf.format(System.currentTimeMillis());
		map.put("date", str);
		System.out.println(map);
		
		boolean a= rDAO.insertReply(map);
		if(a) {
			Gson gson=new Gson();
			
			System.out.println(a);
			return gson.toJson(map);
			
		}else {
			System.out.println(a);
			return "{result : false}";

		}
	}
	
	@RequestMapping(path="/likeBoard.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String likeBoardHandle(@RequestParam Map map) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String str=sdf.format(System.currentTimeMillis());
		map.put("date", str);
		System.out.println(map);
		
		boolean a= rDAO.UpdateLikeReply(map);
		if(a) {
			Gson gson=new Gson();
			
			System.out.println(a);
			return gson.toJson(map);
			
		}else {
			System.out.println(a);
			return "{result : false}";

		}
	}
	@RequestMapping(path="/likeList.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String likeListHandle(@RequestParam Map map) {
		System.out.println(map+"좋아요 리스트");
		List<Map> result = rDAO.findAllReply(map);
		System.out.println(result);
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/listReply.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyListHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println(map+"댓글 리스트 받ㅇ");
		List<Map> result = rDAO.findAllReply(map);
		System.out.println(result);
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/deleteReply.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyDeleteHandle(@RequestParam("") Map param) {
		rDAO.deleteReply(param);
		return "{result : true}";
	}
}
