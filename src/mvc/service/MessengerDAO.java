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

/*
 * db의 이름 : MeshTagramMessenger
 * 컬럼 : me, target, date
 */

@Repository
public class MessengerDAO {
	@Autowired
	MongoTemplate template;
	
	public Map<String ,Object> insertMessage(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("me", param.get("me"));
			map.put("target", param.get("target"));
			map.put("content", param.get("content"));
			map.put("image", param.get("image"));
			map.put("like", param.get("like"));
			map.put("date", new Date());
			template.insert(map, "MeshTagramMessenger");
			System.out.println("성공");
		return map;
	}
	
	public List<Map> findAllMessage() {
		List<Map> list = new LinkedList<>();
		System.out.println("게시물 받음");
		list = template.findAll(Map.class, "MeshTagramMessenger");
		return list;
	}
	
	public Map<String, Object> insertMessageLike(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("", param.get(""));
		return map;
		
	}
	
	public List<Map> findAllMessageLike() {
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
