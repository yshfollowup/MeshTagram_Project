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
import org.springframework.data.mongodb.core.query.Update;
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
	
	//Insert - 댓글
	public Boolean insertReply(Map param ) {
			template.insert(param, "Reply");
			System.out.println("성공");
		return true;
	}
	//Insert - 좋아요 
	public Boolean UpdateLikeReply(Map param ) {
		List<Map> list = new LinkedList<>();
		String s=(String)param.get("boardId");
		String id=(String)param.get("id");
		System.out.println(s+id+"좋아요 추가 아이디");
		Query query = Query.query(Criteria.where("boardId").is(s));
		list=template.find(query, Map.class,"Like");
		System.out.println("좋아요 추가"+list);
		for(int i=0; i<list.size(); i++) {
			String check=list.get(i).get("id").toString();
			System.out.println(check);
			if(check.equals(id)) {
				System.out.println("실패~!");
				return false;
			}
			
		}
		
		template.insert(param, "Like");
		System.out.println("성공");
	return true;
}
	
	public List<Map> findAllLike(){
		List<Map> list = new LinkedList<>();
		list=template.findAll(Map.class, "Like");
		return list;
	}
	//Find(=Search) -댓글 리스트
	public List<Map> findAllReply(Map param) {
		List<Map> list = new LinkedList<>();
		//System.out.println("댓글리스트"+param.get("boardId"));
		String[] q=(String[])param.get("boardId").toString().split(",");
		Query query = Query.query(Criteria.where("boardId").in(q));
		list = template.find(query,Map.class, "Reply");
		return list;
	}
	//finf(=Search) - 좋아요 리스트
		public List<Map> LikeAllReply(Map param) {
			List<Map> list = new LinkedList<>();
			System.out.println("좋아요"+param.get("boardId"));
			String[] q=(String[])param.get("boardId").toString().split(",");
			Query query = Query.query(Criteria.where("boardId").in(q));
			list = template.find(query,Map.class, "Like");
			return list;
		}
		
		//Find 좋아요 게시물 보기
		public List<Map> findLikeBoardId(String value) {
			List<Map> list = new LinkedList<>();
			String q=value;
			
			System.out.println("게시물 받음"+q);
			Query query = Query.query(Criteria.where("boardId").is(q));
			list = template.find(query, Map.class, "Like");
			System.out.println("작업완료");
			return list;
		}
		
		
	
	//Delete
	public Map<String, Object> deleteReply(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
		template.remove(param.get("id"));
		return map;
	}
}
