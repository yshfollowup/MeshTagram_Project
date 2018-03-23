package mvc.service;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.util.MultiValueMap;

@Repository
public class SearchDAO {
	@Autowired
	SqlSessionFactory factory;

	@Autowired
	MongoTemplate template;

	// 아이디 이름 소개글 검색
	public List<Map> searchIdNameIntro(String value) {
		Map map = new HashMap<>();
		map.put("value", "%" + value + "%");
		List<Map> aList = null;

		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("search.searchIdNameIntro", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}

	// 이름만
	public List<Map> searchName(String value) {
		Map map = new HashMap<>();
		map.put("value", "%" + value + "%");
		List<Map> aList = null;

		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("search.searchName", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}

	// Find 비슷한 태그 검색어
	public List<Map> findLikeTag(String value) {
		List<Map> list = new LinkedList<>();
		String q = value;

		System.out.println("게시물 받음" + q);
		Query query = Query.query(Criteria.where("tags").regex(q));
		list = template.find(query, Map.class, "MeshTagramUpload");
		System.out.println("작업완료");
		return list;
	}

	// Find 검색한 대상이 작성한 게시물
	public List<Map> findSearchTag(String value) {
		List<Map> list = new LinkedList<>();
		String q = value;

		System.out.println("게시물 받음" + q);
		Query query = Query.query(Criteria.where("id").is(q));
		list = template.find(query, Map.class, "MeshTagramUpload");
		System.out.println("작업완료");
		return list;
	}

	// Find 하나의 게시물만 검색
	public List<Map> findSearchBoard(MultiValueMap<String, String> map) {
		List<Map> list = new LinkedList<>();

		System.out.println("게시물 받음" + map.getFirst("id"));
		Query query = Query.query(Criteria.where("_id").in(map.getFirst("boardid")));
		list = template.find(query, Map.class, "MeshTagramUpload");
		System.out.println("작업완료");
		return list;
	}
}
