package mvc.service;

import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

/*
 * db의 이름 : post
 * 컬럼 : id, image, date, comment, tags
 * mongo로 테스트하다가 HBase로 넘길 것임
 */

@Repository
public class PostDAO {
	@Autowired
	MongoTemplate template;
	
	//Insert -- 게시물 등록 
	public Map<String, Object> insertImage(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		//System.out.println((String)param.get("writer")+(String)param.get("image"));
			map.put("id", (String)param.get("writer"));
			map.put("image", (String)param.get("image"));
			map.put("date", (String)param.get("time"));
			map.put("comment", (String)param.get("comment"));
			map.put("tags", (List)param.get("tags"));
			template.insert(map,"MeshTagramUpload");
		return map;
	}
	
	//Find(=Search)
	public List<Map> findAllPost() {
		List<Map> list = new LinkedList<>();
		list = template.findAll(Map.class, "post");
		return list;
	}
	
	public List<Map> findPostByName(String name) {
		List<Map> list = new LinkedList<>();
		return list;
	}
	
	public List<Map> findPostByNick(String nick) {
		List<Map> list = new LinkedList<>();
		return list;
	}
	
	//Update
	public Map<String, Object> updateURL(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		//template.updateMulti(param.get(""), map.put("url", ), "post");
		return map;
		
	}
	
	public Map<String, Object> updateContent(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		//template.updateMulti(param.get(""), map.put("content", ), "post");
		return map;
		
	}
	
	public Map<String, Object> updateTags(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		//template.updateMulti(param.get(""), map.put("tags", ), "post");
		return map;
	}
	
	//Delete
	public Map<String, Object> deletePost(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get(""));
		return map;
	}
	
	public Map<String, Object> deletePostByName(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get(""));
		return map;
	}
	
}
