package mvc.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.model.FollowDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;

@Controller
public class NoticeBoardController {
	@Autowired
	PostDAO pDAO;
	@Autowired
	FollowDAO fDAO;
	@Autowired
	AccountDAO aDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	Gson gson;
	
	@RequestMapping(path="/noticeBaord.do")
	@ResponseBody
	public String noticeBoardHandle(@CookieValue(name="setId") String setId) {
		
		List<FollowDTO> followingList = fDAO.selectFollwing(setId); // 내가 팔로잉
		// 공지사항
		List<Map> noticeboard = null;

		noticeboard = pDAO.findAllFollowingPost(followingList);
		List<Map>noticelike=null;
		List<Map>noticeReply=null;
		if (noticeboard != null) {
			noticelike=rDAO.LikefollowingList(followingList);
			noticeReply=rDAO.findAllReplyFollowingList(followingList);
		}
		System.out.println("공지사항 ajax"+noticeboard);
		System.out.println("공지사항 like"+noticelike);
		System.out.println("공지사항 Reply"+noticeReply);

		
		noticeboard.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
			
		});
		
		
		List<Map> notice1=new LinkedList();
		int size=noticeboard.size()/17;
		System.out.println(noticeboard.size());
		
		long ct=System.currentTimeMillis();
		for(int i=0; i<noticeboard.size(); i++) {
			if(!noticeboard.isEmpty()) {
				System.out.println("비어있지 아");
				String noid=noticeboard.get(i).get("id").toString();
				String code=noticeboard.get(i).get("code").toString();
				Date date=(Date)noticeboard.get(i).get("date");
				System.out.println(noid+code+"받았다."+date.getTime());
					
					long dt=date.getTime();
					long prv=ct-dt;
					prv /=1000;
					String rt="";
					if(prv>0 &&  prv < 1000L*60) {
						//몇분전
						System.out.println(prv+"..."+(int)prv/(60)+"전전전");
						rt=(long)prv/(60)+"분전";
					}else if(prv>1000L*60 && prv < 1000L*60*60) {
						//몇 시간전
						rt=prv/(60*60)+"시간";
				}else if(prv>1000L*60*60 && prv <1000L*60*60*24) {
					// 몇 일전
					rt=prv/(60*60*24)+"시간";
				}
					
				Map ss=new LinkedHashMap();
				ss.put("noid", noid);
				ss.put("code", code);
				ss.put("date", rt);
				
				notice1.add(ss);
			}
		}
		
		noticelike.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
			
		});
		
		List<Map> notice2=new LinkedList();
		if(!noticelike.isEmpty()) {
			System.out.println("noticeboard"+noticelike.size());
			for(int i=0; i<noticelike.size(); i++) {
				if(!noticelike.isEmpty()) {
					String noid=noticelike.get(i).get("id").toString();
					String notarget=noticelike.get(i).get("target").toString();
					String code=noticelike.get(i).get("boardId").toString();
					Date date=(Date)noticeboard.get(i).get("date");
					
					long dt=date.getTime();
					long prv=ct-dt;
					prv /=1000;
					String rt="";
					if(prv>0 &&  prv < 1000L*60) {
						//몇분전
						System.out.println(prv+"..."+(int)prv/(60)+"전전전");
						rt=(long)prv/(60)+"분전";
					}else if(prv>1000L*60 && prv < 1000L*60*60) {
						//몇 시간전
						rt=prv/(60*60)+"시간";
				}else if(prv>1000L*60*60 && prv <1000L*60*60*24) {
					// 몇 일전
					rt=prv/(60*60*24)+"시간";
				}
					
					
					Map ss=new LinkedHashMap();
					ss.put("noLikeid", noid);
					ss.put("noLikeTarget", notarget);
					ss.put("code", code);
					ss.put("date", rt);

					
					notice2.add(ss);
					
					
				}
			}
		}
		
		noticeReply.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
			
		});
		
		List<Map> notice3=new LinkedList();
		if(noticeReply!=null) {
			
			for(int i=0; i<noticeReply.size(); i++) {
				String noid=noticeReply.get(i).get("id").toString();
				String notarget=noticeReply.get(i).get("target").toString();
				String code=noticeReply.get(i).get("boardId").toString();
				Date date=(Date)noticeboard.get(i).get("date");
				
				long dt=date.getTime();
				long prv=ct-dt;
				prv /=1000;
				String rt="";
					// 몇초전
					rt= prv+"초전";
					if(prv>0 &&  prv < 1000L*60) {
						//몇분전
						System.out.println(prv+"..."+(int)prv/(60)+"전전전");
						rt=(long)prv/(60)+"분전";
					}else if(prv>1000L*60 && prv < 1000L*60*60) {
						//몇 시간전
						rt=prv/(60*60)+"시간";
				}else if(prv>1000L*60*60 && prv <1000L*60*60*24) {
					// 몇 일전
					rt=prv/(60*60*24)+"시간";
				}
				
				Map ss=new LinkedHashMap();
				ss.put("noReplyid", noid);
				ss.put("noReplyTarget", noid);
				ss.put("code", code);
				ss.put("date", rt);

				
				notice3.add(ss);
			}
		}
		
		List<Map> result=new LinkedList<>();
		System.out.println("합치기 전"+notice1+notice2+notice3);
		result.addAll(notice1);
		result.addAll(notice2);
		result.addAll(notice3);
		Gson gson=new Gson();
		System.out.println("다 받아버려~!"+result);
		return gson.toJson(result);
	}
}
