package mvc.service;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
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
	
	
}
