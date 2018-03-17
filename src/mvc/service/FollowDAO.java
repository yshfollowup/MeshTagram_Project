package mvc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.model.AccountDTO;
import mvc.model.FollowDTO;

@Repository
public class FollowDAO {
	@Autowired
	SqlSessionFactory factory;
	
	public int insertFollow(String me ,String target) {
		Map map = new HashMap();
			map.put("me", me);
			map.put("target", target);
		
		FollowDTO fDTO = new FollowDTO();
			fDTO.setMe(me);
			fDTO.setTarget(target);
			
		SqlSession session=factory.openSession();
		int r =0;
		try {
			r= session.insert("follow.insertFollow", map);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			return r;
		}
	}
	
	public int deleteFollow(String me, String target) {
		FollowDTO fDTO = new FollowDTO();
			fDTO.setMe(me);
			fDTO.setTarget(target);

		SqlSession session = factory.openSession();
		int r = 0;
		try {
			r = session.delete("follow.deleteFollow", fDTO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
/*	public List<FollowDTO> selectFollwing(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		List<FollowDTO> fList = null;
		
		SqlSession session = factory.openSession();
		try {
			fList = session.selectList("follow.selectFollowing", map);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			return fList;
		}
	}
	
	public List<FollowDTO> selectFollwer(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		List<FollowDTO> fList = null;
		
		SqlSession session = factory.openSession();
		try {
			fList = session.selectList("follow.selectFollower", map);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			return fList;
		}
	}*/
	
	
	
	
}
