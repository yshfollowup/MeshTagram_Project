package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
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
	public String mainHandle(@CookieValue(name="setId", required=false) String setId, ModelMap map) {
		List<Map> list=fDAO.selectFollwingProfileId(setId);
		map.put("followList", list);
		return "dm_page";
	}
	
	@RequestMapping(path="/insertMessage.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String insertMessageHandle(@RequestParam Map param, @CookieValue(name="setId", required=false) String setId) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = sdf.format(System.currentTimeMillis());
		param.put("date", str);
		System.out.println(param);
		List<Map> list=fDAO.selectFollwingProfileId(setId);

		
		String[] uuids = UUID.randomUUID().toString().split("-");
		String key= uuids[0]+"-"+uuids[1];
		param.put("code", key);

		
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
	public String showMessageHandle(@RequestParam Map vmap) {
		List<Map> result = mDAO.findAllMessage(vmap);
		List<Map> result2 = mDAO.findMessage(vmap);
		result.addAll(result2);
		System.out.println(vmap+"..."+result+result2);

		result.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return result;
			}
		});
		System.out.println(result + "메세지 합친거");
		
		return gson.toJson(result);
	}
/*	@RequestMapping(path="/likebutton.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showLikeHandle(@RequestParam MultiValueMap<String, String> vmap) {
	//	List<Map> result = mDAO.updateMessageLike(vmap);
		return gson.toJson(result);
	}
	*/
	
	
	@RequestMapping(path="/senderId.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String senderIdHandle(@RequestParam MultiValueMap<String, String> vmap) {
		List<Map> result = mDAO.CheckMessge(vmap);
		
		
		return gson.toJson(result);
	}
	
	@RequestMapping(path="/showFollowing.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String showFollowingHandle(@CookieValue(name="setId", required=false) String setId) {
		List<FollowDTO> result = fDAO.selectFollwing(setId);
		return gson.toJson(result);
	}
	@RequestMapping(path="/updateScope.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String UpdateScopeHandle(@RequestParam Map map) {
		mDAO.UpdateScopeMessage(map);
		System.out.println("일단업데이트");
		
		return  "{result : false}";
	}
	
	@RequestMapping(path="/updateLike.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String UpdateLikeHandle(@RequestParam Map map) {
		mDAO.updateMessageLike(map);
		System.out.println("일단업데이트"+map);
		List<Map> result = mDAO.findAllMessage(map);
		List<Map> result2 = mDAO.findMessage(map);
		result.addAll(result2);
		
		result.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return result;
			}
		});
		System.out.println(result);
		Gson gson=new Gson();
		return  gson.toJson(result);
	}
	
	@RequestMapping(path="/deleteLike.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteLikeHandle(@RequestParam Map map) {
		mDAO.deleteMessageLike(map);
		System.out.println("일단업데이트");
		List<Map> result = mDAO.findAllMessage(map);
		List<Map> result2 = mDAO.findMessage(map);
		result.addAll(result2);
		
		result.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return result;
			}
		});
		System.out.println(result);
		Gson gson=new Gson();
		return  gson.toJson(result);
	}
}
