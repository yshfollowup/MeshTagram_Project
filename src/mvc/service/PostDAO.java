package mvc.service;

import java.text.SimpleDateFormat;
import java.util.*;

import org.bson.BSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;

import mvc.model.FollowDTO;

/*
 * db의 이름 : MeshTagramUpload
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
			map.put("image", param.get("image"));
			//map.put("path", param.get("path"));
			map.put("profile", param.get("profile"));
			map.put("birth", param.get("birth"));
			map.put("gender", param.get("gender"));
			map.put("date", param.get("time"));
			map.put("comment", (List)param.get("comment"));
			map.put("tags", (List)param.get("tags"));
			map.put("annotations", (List)param.get("annotations"));
			map.put("code", param.get("code"));
			template.insert(map,"MeshTagramUpload");
			System.out.println("성공");
		return map;
	}
	
	//Find(=Search)
	public List<Map> findAllPost() {
		List<Map> list = new LinkedList<>();
		System.out.println("게시물 받음");
		list = template.findAll(Map.class, "MeshTagramUpload");
		list.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
		});
		return list;
	}
	
	//Find(내가 팔로우 한사람들의 최신 게시물 받기)
	public List<Map> findAllFollowingPost(List<FollowDTO> map) {
		List<Map> list = new LinkedList<>();
		//System.out.println("게시물 받음공지 리스트"+map.size());
		
		for(int i=0; i<map.size();i++) {
			String id= map.get(i).getTarget();
			//System.out.println("공지 받을 아이디"+ id);
			Query query= new Query(Criteria.where("id").is(id));
			list.addAll(template.findAll(Map.class, "MeshTagramUpload"));
		}
		
		
		
		list.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
		});
		return list;
	}
	
	//id에 해당하는 게시물
	public List<Map> findPostById(String id) {
		List<Map> list = new LinkedList<>();
		Query query = 
				new Query(Criteria.where("id").is(id));
		list = template.find(query, Map.class, "MeshTagramUpload");
		 


		list.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
		});
		return list;
	}
	
	//id에 해당하는 게시물
	public List<Map> findFollowPostById(List<Map> map) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-DD",Locale.KOREA);
		Date date=new Date();
		String time= sdf.format(date);
		List<String> list = new LinkedList<>();
		for(int i=0; i<map.size(); i++) {
			String s=(String)map.get(i).get("ID");
			list.add(s);
			
		}
		List<Map> fList=new LinkedList<>();
		Query query = 
				new Query(Criteria.where("id").in(list).and("date").gt(time));
		fList = template.find(query, Map.class, "MeshTagramUpload");
		fList.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
		});
		return fList;
	}
	
	//tag에 해당하는 게시물
	public List<Map> findPostByTag(String tag) {
		List<Map> list = new LinkedList<>();
		Query query = 
				new Query(Criteria.where("tags").is(tag));
		list = template.find(query, Map.class, "MeshTagramUpload");
		list.sort(new Comparator<Map>() {
			@Override
			public int compare(Map o1, Map o2) {
				Date d1 = (Date) o1.get("date");
				Date d2 = (Date) o2.get("date");
				int result = d1.compareTo(d2);
				return -result;
			}
		});
		return list;
	}
	
	//Update
	public void updateContent(String preContent, String postContent) {
		Query query = new Query(Criteria.where("content").is(preContent));
		Update update = new Update();
		update.set("content", postContent);
		template.updateFirst(query, update, "MeshTagramUpload");
	}
	//Update
	public void updateProfile(Map param) {
		String id=(String)param.get("id");
		String profile=(String)param.get("profile");
		System.out.println(id+profile+"프로필 업데이트");

		Query query = new Query(Criteria.where("id").in(id));
		Update update = new Update();
		update.set("profile", profile);
		template.updateMulti(query, update, "MeshTagramUpload");
	}
	//Update
	public void updateProfilebirthgender(Map param,String setId) {
		String birth=(String)param.get("birth");
		String gender=(String)param.get("gender");
		Query query = new Query(Criteria.where("id").in(setId));
		Update update = new Update();
		update.set("birth", birth);
		update.set("gender", gender);
		template.updateMulti(query, update, "MeshTagramUpload");
	}

	//Delete
	public void deletePost(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		Query query = new Query(Criteria.where("id").is(param.get("id")));
		template.remove(query, "MeshTagramUpload");
	}
	
	public void deletePostById(String id) {
		Query query = new Query(Criteria.where("id").is(id));
		template.findAllAndRemove(query, "MeshTagramUpload");
	}
	public void deletePostAllById(String id) {
		Query query = new Query(Criteria.where("id").is(id));
		template.findAllAndRemove(query, "MeshTagramUpload");
		Query query2 = new Query(Criteria.where("reid").is(id));
		template.findAllAndRemove(query2, "Reply");
		Query query3 = new Query(Criteria.where("sender").is(id));
		template.findAllAndRemove(query3, "Messenger");
		Query query4 = new Query(Criteria.where("id").is(id));
		template.findAllAndRemove(query4, "Like");
	}
	
	//==================================================================
	public void tagsCOUNT(Map map) {
		System.out.println(map);
		template.insert(map,"TagsCount");
	}
	public void BirthgenderCount(Map map) {
		System.out.println(map);
		template.insert(map,"birthgenderCount");
	}
	public void ReplyCOUNT(Map map) {
		System.out.println(map);
		template.insert(map,"ReplyCount");
	}
	
}
