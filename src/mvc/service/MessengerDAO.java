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
		System.out.println("게시물 받음"+map.get("sender")+".."+map.get("target"));
		Query query = Query.query(Criteria.where("sender").in(map.get("sender")).and("target").in(map.get("target")));
		list = template.find(query,Map.class, "Messenger");
		return list;
	}
	
	//메세지 가져오기2
	
	public List<Map> findMessage( Map map) {
		List<Map> list2 = new LinkedList<>();
		System.out.println("게시물 받음"+map.get("target")+".."+map.get("sender"));
		Query query2 = Query.query(Criteria.where("sender").in(map.get("target")).and("target").in(map.get("sender")));
		list2 = template.find(query2 ,Map.class, "Messenger");
		
		return list2;
	}
	
	//메세지 확인하기
	
	public List<Map> CheckMessge(MultiValueMap<String, String> map) {
		List<Map> list2 = new LinkedList<>();
		System.out.println(map+"게시물 받음"+map.get("sneder")+".."+map.get("target")+map.size());
		String[] s=map.get("sender[]").toString().split(",");
		for(int i=0; i<map.size()-1; i++) {
			String a=s[i];
			System.out.println("sender 리스트 받음"+a);
			Query query2 = Query.query(Criteria.where("sender").is(a).where("target").in(map.get("target")));
			list2.addAll(template.find(query2 ,Map.class, "Messenger"));
		}
		System.out.println(list2);
		return list2;
	}
	
	//메세지 좋아요 
	public void updateMessageLike(Map map) {
		System.out.println(map+"스코프가 들어왔다. 좋아요 버틍");
		Query query = new Query(Criteria.where("code").in(map.get("oid")));
		Update update = new Update();
		update.set("like", "좋아요");
		template.updateFirst(query,update , "Messenger");
	}
	
	// Scope설정
	public void UpdateScopeMessage(Map map) {
		System.out.println(map+"스코프가 들어왔다.");
		Query query = new Query(Criteria.where("sender").in(map.get("target")).where("target").in(map.get("sender")));
		Update update = new Update();
		update.set("scope", "1");
		template.updateMulti(query,update , "Messenger");
	}
	
	public void deleteMessageLike(Map param) {
		System.out.println(param+"스코프가 들어왔다. 좋아요취소 버틍");
		Query query = new Query(Criteria.where("code").in(param.get("oid")));
		Update update = new Update();
		update.set("like", "0");
		template.updateFirst(query,update , "Messenger");
	}
}
