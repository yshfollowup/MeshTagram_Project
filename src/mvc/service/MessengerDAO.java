package mvc.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import org.springframework.util.MultiValueMap;

import com.google.gson.Gson;

/*
 * db의 이름 : MeshTagramMessenger
 * 컬럼 : me, target, date
 */

@Repository
public class MessengerDAO {
	@Autowired
	MongoTemplate template;
	
	
	// 메세지 보내기
	public Map<String ,Object> insertMessage( Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			System.out.println(param.get("sneder")+"다 받아져라~!");
			
			map.put("sender",param.get("sender"));
			map.put("target", param.get("target"));
			map.put("image", param.get("image"));
			map.put("content", param.get("content"));
			map.put("like", param.get("like"));
			map.put("date", new Date());
			map.put("scope", param.get("scope"));
			map.put("code", param.get("code"));
			template.insert(map, "Messenger");
			System.out.println("성공");
		return map;
	}
	//메세지 가져오기
	
	public List<Map> findAllMessage( Map map) {
		List<Map> list = new LinkedList<>();
		System.out.println("게시물 받음"+map.get("sneder")+".."+map.get("target"));
		Query query = Query.query(Criteria.where("sender").in(map.get("sender")).where("target").in(map.get("target")));
		list = template.find(query,Map.class, "Messenger");
		return list;
	}
	
	//메세지 가져오기2
	
	public List<Map> findMessage( Map map) {
		List<Map> list2 = new LinkedList<>();
		System.out.println("게시물 받음"+map.get("sneder")+".."+map.get("target"));
		Query query2 = Query.query(Criteria.where("target").in(map.get("sender")).where("sender").in(map.get("target")));
		list2 = template.find(query2 ,Map.class, "Messenger");
		
		return list2;
	}
	
	//메세지 확인하기
	
	public List<Map> CheckMessge(MultiValueMap<String, String> map) {
		List<Map> list2 = new LinkedList<>();
		System.out.println("게시물 받음"+map.get("sneder")+".."+map.get("target[]"));
		String[] s=map.get("target[]").toString().split(",");
		for(int i=0; i<map.size(); i++) {
			String a=s[i];
			Query query2 = Query.query(Criteria.where("sender").is(s).where("target").in(map.get("sender")));
			list2.addAll(template.find(query2 ,Map.class, "Messenger"));
		}
		System.out.println(list2);
		return list2;
	}
	
	//메세지 좋아요 
	public void updateMessageLike(Map map) {
		System.out.println(map.get("like"));
		Query query = new Query(Criteria.where("like").is(map.get("like")));
		Update update = new Update().set("like", "좋아요");
		template.updateFirst(query,update , "MeshTaramMessenger");
	}
	
	// Scope설정
	public void UpdateScopeMessage(Map map) {
		System.out.println(map.get("like"));
		Query query = new Query(Criteria.where("like").is(map.get("like")));
		Update update = new Update().set("like", "좋아요");
		template.updateFirst(query,update , "MeshTaramMessenger");
	}
	
	public void deleteMessageLike(Map param) {
		Query query = new Query(Criteria.where("_id").is(param.get("_id")));
		template.remove(query, "LikeMessage");
	}
}
