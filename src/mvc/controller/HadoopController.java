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
	@RequestMapping("/alltags.do")
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
	@RequestMapping("/birthgendercount.do")
	public void BirthGenderCountHandle() {
		List<Map> allpost =pDAO.findAllPost();
		List<String> list=new ArrayList();
		Map map=new LinkedHashMap();
		String[] q=null;
		for(int i=0; i<allpost.size(); i++) {
			Object tags=allpost.get(i).get("tags");
			Object bt=allpost.get(i).get("birth");
			Object gen=allpost.get(i).get("gender");
			String tag=tags.toString().replace("[", "").replace("]", "").replace(",", "").replace(" ", "");
			String birth="";
			String gender="";
			System.out.println(bt+"생일"+gen);
			if(bt !=null) {
				birth=bt.toString().substring(24, 28);
				
			}else {
				birth="null";
			}
			if(gen !=null) {
				gender=gen.toString();
			}else {
				gender="null";
			}
			String sum=tag+","+birth+","+gen;
			System.out.println(tag+"..."+birth+"..."+gender);
			map.put("birth",birth);
			map.put("gender", gender);
			q=tag.split("#");
			for(int j=0; j<q.length; j++) {
				System.out.println(q[j]);
				if(!q[j].equals("")) {
					map.put("tags", q[j]);
					pDAO.BirthgenderCount(map);
					
				}

			}
			list.add(sum);
		}
		
		System.out.println(list);
		
		
	}
	@RequestMapping("/replycount.do")
	public void replycountHandle() {
		List<Map> allReply=rDAO.allReply();
		List<String>list=new ArrayList<>();
		Map map=new LinkedHashMap();
		String[] ment;
		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";

		for(int i=0; i<allReply.size();i++) {
			Object me=allReply.get(i).get("ment");
			String s=me.toString();
			ment=s.split("\\s");
			System.out.println(Arrays.toString(ment)+"멘트이다.");
		
			for(String aa:ment) {
				aa=aa.replaceAll(match, "");
				if(aa.equals("")) {
					
				}else {
					list.add(aa);
					map.put("ment", aa);
					pDAO.ReplyCOUNT(map);
					
				}
			}
		}

		

		System.out.println(list);
	}
	
}