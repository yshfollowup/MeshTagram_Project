package mvc.service;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

/*
 * db의 이름 : messenger
 * 컬럼 : me, target, date
 */

@Repository
public class MessengerDAO {
	@Autowired
	MongoTemplate template;
	
	public Map<String ,Object> insertMessage(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("me", param.get(""));
			map.put("target", param.get(""));
			map.put("date", param.get(""));
			template.insert(map, "messenger");
		return map;
	}
	
	public List<Map> findAllMessage() {
		List<Map> list = new LinkedList<>();
		list = template.findAll(Map.class, "messenger");
		return list;
	}
}
