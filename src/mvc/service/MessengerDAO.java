package mvc.service;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
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
	public Map<String ,Object> insertMessage(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("me", param.get("me"));
			map.put("target", param.get("target"));
			map.put("content", param.get("content"));
			map.put("image", param.get("image"));
			map.put("like", param.get("like"));
			map.put("date", new Date());
			map.put("scope", param.get("scope"));
			template.insert(map, "MeshTagramMessenger");
			System.out.println("성공");
		return map;
	}
	//메세지 가져오기
	public List<Map> findAllMessage( MultiValueMap<String, String> map) {
		List<Map> list = new LinkedList<>();
		System.out.println("게시물 받음");
		Query query = Query.query(Criteria.where("me").in(map.get("id")).and("target").in(map.get("target")));
		list = template.find(query,Map.class, "MeshTagramMessenger");
		return list;
	}
	
	//메세지 좋아요 
	public void updateMessageLike(MultiValueMap<String, String> map) {
		//Query query = new Query(Criteria.where("_id").is(param.get("_id")));
		//template.updateFirst(query, update, "MeshTaramMessenger");
	}
	// Scope설정
	public List<Map> UpdateScopeMessage() {
		List<Map> list = new LinkedList<>();
		System.out.println("좋아요 목록 받음");
		list = template.findAll(Map.class, "LikeMessage");
		return list;
	}
	
	public void deleteMessageLike(Map param) {
		Query query = new Query(Criteria.where("_id").is(param.get("_id")));
		template.remove(query, "LikeMessage");
	}
}
