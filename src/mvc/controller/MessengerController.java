package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.service.MessengerDAO;

@Controller
@RequestMapping("/direct")
public class MessengerController {
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping(path="/insert.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String insertMessageHandle(@RequestParam Map param) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String str = sdf.format(System.currentTimeMillis());
		param.put("date", str);
		boolean rst = true;
		if (rst) {
			mDAO.insertMessage(param);
			return "{result : true}";			
		}else {
			return "{result : false}";
		}
	}
	
	@RequestMapping(path="/list.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showMessageHandle() {
		List<Map> result = mDAO.findAllMessage();
		return gson.toJson(result);
	}
}
