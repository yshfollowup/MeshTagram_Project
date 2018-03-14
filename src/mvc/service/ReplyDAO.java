package mvc.service;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	@Autowired
	MongoTemplate template;
	
	//Insert
	public Map<String, Object> insertReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("id", param.get(""));
			map.put("content", param.get(""));
			map.put("date", param.get(""));
		return map;
	}
	
	//Find(=Search)
	public List<Map> findAllReply() {
		List<Map> list = new LinkedList<>();
		list = template.findAll(Map.class, "reply");
		return list;
	}
	
	//Update
	public Map<String, Object> updateReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		//template.updateMulti(param.get(""), map.put("id", ), "post");
		return map;
	}
	
	//Delete
	public Map<String, Object> deleteReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get(""));
		return map;
	}
}
