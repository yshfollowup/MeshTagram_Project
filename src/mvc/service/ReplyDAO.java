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
 * db의 이름 : MeshTagramReply
 * 컬럼 : id, like, content, date
 * mongo로 테스트하다가 HBase로 넘길 것임
 */


@Repository
public class ReplyDAO {
	@Autowired
	MongoTemplate template;
	
	//Insert
	public Map<String, Object> insertReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("id", param.get("id"));
			map.put("like", param.get("like"));
			map.put("content", param.get("content"));
			map.put("date", new Date());
			template.insert(map, "MeshTagramReply");
			System.out.println("성공");
		return map;
	}
	
	//Find(=Search)
	public List<Map> findAllReply() {
		List<Map> list = new LinkedList<>();
		list = template.findAll(Map.class, "MeshTagramReply");
		return list;
	}
	
	
	//Delete
	public Map<String, Object> deleteReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get("id"));
		return map;
	}
}
