package mvc.service;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

/*
 * Meshtagram의 게시물 구성 - 파일의 url, 내용, 태그(#붙은 것들)
 * db의 이름 : post
 */

@Repository
public class PostDAO {
	@Autowired
	MongoTemplate template;
	
	//Insert -- 게시물 등록 
	public Map<String, Object> insertImage(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("url", param.get("writer"));
			map.put("content", param.get("image"));
			map.put("tags", param.get(""));
			map.put("date", param.get(""));
			template.insert(map,"MeshTagram-Upload");
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
