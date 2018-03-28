package mvc.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import org.springframework.util.MultiValueMap;

import mvc.model.AccountDTO;
import mvc.model.FollowDTO;

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
	// 북마크 추가
	public Boolean markBoard(Map param) {
			template.insert(param,"markBoard");
			System.out.println("마크 저장 완료");

		return true;
	}
	
	//Find(=Search) -댓글 리스트 :이부분에서 에러가 뜬다.
	public List<Map> markBoardFind(String id) {
		System.out.println("북마크");
		Query query = Query.query(Criteria.where("boardId").in(id));
		List<Map> list = template.find(query,Map.class, "MeshTagramUpload");
		System.out.println("댓글리스트"+list);
		return list;
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
	/*	for(int i=0; i<list.size(); i++) {
			String check=list.get(i).get("id").toString();
			System.out.println(check);
			if(check.equals(id)) {
				System.out.println("실패~!");
				return false;
			}
			
		}*/
		
		template.insert(param, "Like");
		System.out.println("성공");
	return true;
}
	
	public List<Map> findAllLike(){
		List<Map> list = new LinkedList<>();
		list=template.findAll(Map.class, "Like");
		return list;
	}
	//Find(=Search) -댓글 리스트 :이부분에서 에러가 뜬다.
	public List<Map> findAllReply(MultiValueMap<String, String> param) {
		List<Map> list = new LinkedList<>();
		String q=null;
		for(int i=0; i<param.size(); i++) {
			q+=param.get("boardId[]");
		}
		System.out.println("댓글리스트1111"+param.get("boardId[]")+param.size()+q);
		Query query = Query.query(Criteria.where("boardId").in(param.get("boardId[]")));
		list = template.find(query,Map.class, "Reply");
		System.out.println("댓글리스트"+list);
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
		
		//finf(=Search) - 좋아요 리스트
		public List<Map> LikefollowingList(List<FollowDTO> param) {
			List<Map> list = new LinkedList<>();
			
			for(int i=0; i<param.size();i++) {
				String id= param.get(i).getTarget();
				Query query= new Query(Criteria.where("id").is(id));
				list.addAll(template.find(query,Map.class, "Like"));
			}
			System.out.println("좋아요공지 리스트"+ list);
			return list;
		}
		
		//Find(=Search) -댓글 리스트 :이부분에서 에러가 뜬다.
		public List<Map> findAllReplyFollowingList(List<FollowDTO> param) {
			List<Map> list = new LinkedList<>();
			for(int i=0; i<param.size();i++) {
				String id= param.get(i).getTarget();
				//System.out.println("댓글공지 받을 아이디"+ id);
				Query query= new Query(Criteria.where("id").is(id));
				list.addAll(template.find(query,Map.class, "Reply"));
			}
			System.out.println("댓글공지 리스트"+list);
			return list;
		}
		//==============================================================================================
		//Find 좋아요 게시물 보기
		public List<Map> findLikeBoardId(String value) {
			List<Map> list = new LinkedList<>();
			String q=value;
			
			//System.out.println("게시물 받음"+q);
			Query query = Query.query(Criteria.where("boardId").is(q));
			list = template.find(query, Map.class, "Like");
			//System.out.println("작업완료");
			return list;
		}
		
		//Find 댓글 게시물 보기
		public List<Map> findReplyBoardId(String value) {
			List<Map> list = new LinkedList<>();
			String q=value;
			
			//System.out.println("게시물 받음"+q);
			Query query = Query.query(Criteria.where("boardId").is(q));
			list = template.find(query, Map.class, "Reply");
			//System.out.println("작업완료");
			return list;
		}
		//Find 댓글 게시물 보기
		public List<Map> findReplyListBoardId(List<Map> value) {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMDD",Locale.KOREA);
			Date date=new Date();
			String time= sdf.format(date);
			List<Map> list = new LinkedList<>();
			List<String> val=new LinkedList<>();
			for(int i=0; i<value.size(); i++) {
				String s=(String)value.get(i).get("id");
				val.add(s);
				
			}
			//System.out.println("게시물 받음"+q);
			Query query = Query.query(Criteria.where("boardId").in(val).gt(sdf));
			list = template.find(query, Map.class, "Reply");
			//System.out.println("작업완료");
			return list;
		}
		//Find 좋아요 게시물 보기
		public List<Map> findLikeListBoardId(List<Map> value) {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMDD",Locale.KOREA);
			Date date=new Date();
			String time= sdf.format(date);
			List<Map> list = new LinkedList<>();
			List<String> val=new LinkedList<>();
			for(int i=0; i<value.size(); i++) {
				String s=(String)value.get(i).get("id");
				val.add(s);
				
			}
			//System.out.println("게시물 받음"+q);
			Query query = Query.query(Criteria.where("boardId").in(val).gt(time));
			list = template.find(query, Map.class, "Like");
			//System.out.println("작업완료");
			return list;
		}
	//좋아요 취소 버튼
	public Map<String, Object> deleteLike(MultiValueMap<String, String> param) {
		Map<String, Object> map = new LinkedHashMap<>();
		String s= (String)param.getFirst("boardid");
		String d=(String)param.getFirst("id");
		System.out.println("좋아요 취소"+param.getFirst("boardid")+param.getFirst("id"));
		Query query = new Query(Criteria.where("boardId").in(param.get("boardid")).where("id").in(param.get("id")));
		template.remove(query, Map.class, "Like");
		System.out.println("성공했을까?");

		return map;
	}
	//댓글 삭제 버튼
	public Boolean Replydelete(MultiValueMap<String, String> param) {
		Map<String, String> map = new LinkedHashMap<>();
		String s= (String)param.getFirst("boardid");
		String d=(String)param.getFirst("id");
		System.out.println("댓글 삭제"+param.getFirst("boardid")+","+param.getFirst("id")+","+param.getFirst("ment"));
		Query query = new Query(Criteria.where("boardId").in(param.get("boardid")).where("id").in(param.get("id")).where("ment").in(param.get("ment")));
		template.remove(query, Map.class, "Reply");
		System.out.println("성공했을까?");

		return true;
	}
}
