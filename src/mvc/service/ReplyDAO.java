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
 * db의 이름 : MeshTagramReply
 * 컬럼 : id, like, content, date
 * mongo로 테스트하다가 HBase로 넘길 것임
 */


@Repository
public class ReplyDAO {
	@Autowired
	MongoTemplate template;
	
	//Insert
	public Boolean insertReply(Map param ) {
			template.insert(param, "Reply");
			System.out.println("성공");
		return true;
	}
	
	//Find(=Search)
	public List<Map> findAllReply(Map param) {
		List<Map> list = new LinkedList<>();
		String q=(String)param.get("boardId");
		String s[]=q.split(",");
		System.out.println("댓글리스트");
		Query query = Query.query(Criteria.where("boardId").is(s));
		list = template.find(query,Map.class, "Reply");
		return list;
	}
	
	
	//Delete
	public Map<String, Object> deleteReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get("id"));
		return map;
	}
}
