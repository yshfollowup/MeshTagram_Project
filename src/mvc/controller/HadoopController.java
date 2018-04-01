package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;
import mvc.service.SearchDAO;
import mvc.service.SeperatorService;

@Controller
@RequestMapping("/hadoop")
public class HadoopController {

	@Autowired
	FollowDAO fDAO;
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	SearchDAO sDAO;
	@Autowired
	SeperatorService ss;

	// 회원가입 페이지
	@RequestMapping("/index.do")
	public void MapHandle(@CookieValue(name = "setId") String setId) {
		
		List<Map> allpost=pDAO.findAllPost();
		List<String> list=new ArrayList();
		System.out.println(allpost);
		for(int i=0; i<allpost.size(); i++){
			
			Object a=allpost.get(i).get("tags");
			String s=a.toString().replace("[", "").replace("]", "").replace(",", "").replace(" ", "");
			
			list.add(s);

		}
		//list.removeAll(Collections.singleton(null));
		String s="";
		String[] q=null;
			System.out.println(list.size());
			for(int i =0; i<list.size(); i++) {
				//System.out.println(list.get(i));
				s+=list.get(i);
			}
			System.out.println(s);

		q=s.split("#");
		Map map=new LinkedHashMap();
		for(int i=0; i<q.length; i++) {
			System.out.println(q[i]);
			map.put("tags", q[i]);
			pDAO.tagsCOUNT(map);

		}
		
		
	}
	
	
}