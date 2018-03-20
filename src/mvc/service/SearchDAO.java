package mvc.service;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import mvc.model.AccountDTO;

@Repository
public class SearchDAO {
	@Autowired
	SqlSessionFactory factory;
	
	@Autowired
	MongoTemplate template;
	
	//아이디 이름 소개글 검색
	public List<Map> searchIdNameIntro(String value) {
		Map map = new HashMap<>();
			map.put("value", "%"+value+"%");
		List<Map> aList=null;
			
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("search.selectAllAccountNotme", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
	
	//아이디 이름 소개글 검색
	public List<Map> searchName(String value) {
		Map map = new HashMap<>();
			map.put("value", "%"+value+"%");
		List<Map> aList=null;
			
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("search.selectAllAccountNotme", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
	
	//Find(=Search)
		public List<Map> findLikeTag(String value) {
			List<Map> list = new LinkedList<>();
			System.out.println("게시물 받음");
			String q="/"+value+"/";
			Query query = Query.query(Criteria.where("name").is(q));
			list = template.find(query, Map.class, "MeshTagramUpload");
			return list;
		}
}
