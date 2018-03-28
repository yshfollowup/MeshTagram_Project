package mvc.controller;

import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;
import mvc.service.ReplyDAO;

@Controller
public class ReplyController {
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	Gson gson;
	@Autowired
	AccountDAO aDAO;
	
	@RequestMapping(path="/addreply.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String replyAddHandle(@RequestParam Map map) {
		map.put("date", new Date());
		System.out.println(map+(String)map.get("ment")+"댓글을 입력한다.");
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
	
	@RequestMapping(path="/likeBoard.do", produces="application/json;charset=utf-8" )
	@ResponseBody
	public String likeBoardHandle(@RequestParam Map map) {
		map.put("date", new Date());
		//System.out.println("좋아요 리스트가 들어왔다"+map);
		
		boolean a= rDAO.UpdateLikeReply(map);
		
		List<Map> list=new ArrayList();
		list=rDAO.findAllLike();
		//System.out.println("좋아요 모음!!!!"+list.size());
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		long ct= System.currentTimeMillis();
		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			Object objectid=(Object)list2.get(i).get("_id");
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			Date date=(Date)list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			String s=objectid.toString();
			
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
			
			//System.out.println(s+"카운트 개수");
			count=list3.size();
			list2.get(i).put("objectId", s);
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", rt);
			list2.get(i).put("count", count);
			
		}
		
		if(a) {
			Gson gson=new Gson();
			
			System.out.println(a);
			return gson.toJson(list2);
			
		}else {
			System.out.println(a);
			return "{result : false}";

		}
	}
	@RequestMapping(path="/likeList.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String likeListHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println(map+"좋아요 리스트");
		List<Map> list=new ArrayList();
		list=rDAO.findAllLike();
		//System.out.println("좋아요 모음!!!!"+list.size());
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		long ct=System.currentTimeMillis();
		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			Object objectid=(Object)list2.get(i).get("_id");
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			Date date=(Date)list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			//System.out.println(list3.size()+"카운트 개수");
			String s=objectid.toString();
			
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
			
			count=list3.size();
			list2.get(i).put("objectId", s);
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", rt);
			list2.get(i).put("count", count);
			
		}
		System.out.println(list2);
		return gson.toJson(list2);
	}
	
	
	@RequestMapping(path="/SearchLikeList.do", produces="application/json;charset=utf-8", method=RequestMethod.POST)
	@ResponseBody
	public String SearchListLikeHandle(@RequestParam MultiValueMap<String, String> map) {
		List<String> list = map.get("listId[]");
		System.out.println(map+"모달 리스트를 받았다.");
		List<AccountDTO> result = aDAO.selectSearchLikeListAccount(list);
		System.out.println("아이디리스트이다"+result);
		return gson.toJson(result);
	}
	//============================
	//댓글 리스트 받기
	@RequestMapping(path="/listReply.do", produces="application/json;charset=utf-8" , method=RequestMethod.POST)
	@ResponseBody
	public String replyListHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println(map+"댓글 리스트 받ㅇ");
		List<Map> result = rDAO.findAllReply(map);
		System.out.println("댓글리스트이다"+result);
		return gson.toJson(result);
	}
	@RequestMapping(path="/deleteLike.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String replyDeleteHandle(@RequestParam MultiValueMap<String, String> param) {
		System.out.println(param+"좋아요 지우기");
		rDAO.deleteLike(param);
		int count=0;
		List<Map> list2=new ArrayList();
		list2=rDAO.findAllLike();
		long ct =System.currentTimeMillis();
		for(int i=0; i<list2.size(); i++) {
			List<Map> list3=new ArrayList();
			Object objectid=(Object)list2.get(i).get("_id");
			String boardId=(String)list2.get(i).get("boardId");
			String id=(String)list2.get(i).get("id");
			Date date=(Date)list2.get(i).get("date");
			list3=rDAO.findLikeBoardId(boardId);
			//System.out.println(list3.size()+"카운트 개수");
			String s=objectid.toString();
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
			count=list3.size();
			list2.get(i).put("objectId", s);
			list2.get(i).put("boardId", boardId);
			list2.get(i).put("id",id);
			list2.get(i).put("date", rt);
			list2.get(i).put("count", count);
			
		}
		System.out.println(list2);
		return gson.toJson(list2);
	}
	@RequestMapping(path="/markBoard.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String MarkBoardHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println("북마크 리스트 받음"+ map);
		rDAO.markBoard(map);
		return gson.toJson(map);
	}
	@RequestMapping(path="/delReply.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String ReplydeleteHandle(@RequestParam MultiValueMap<String, String> map) {
		System.out.println("삭제 리스트 받음"+ map);
		rDAO.Replydelete(map);
		Gson gson=new Gson();
		return gson.toJson(map);
	}
}
