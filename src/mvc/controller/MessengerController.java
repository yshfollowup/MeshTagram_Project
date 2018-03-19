package mvc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.service.MessengerDAO;

@Controller
@RequestMapping("/account")
public class MessengerController {
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping(path="/add.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String insertMessageHandle(@RequestParam("") Map param) {
		mDAO.insertMessage(param);
		return "{result : true}";
	}
	
	@RequestMapping(path="/list.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showMessageHandle(@RequestParam("parent") int parent) {
		List<Map> result = mDAO.findAllMessage();
		return gson.toJson(result);
	}
}
