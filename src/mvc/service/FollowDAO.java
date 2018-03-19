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

	public boolean selectOneFollow(String owner, String target) {
		Map map = new HashMap();
			map.put("owner", owner);
			map.put("target", target);
		
		SqlSession session=factory.openSession();
		try {
			if (session.selectOne("follow.selectOneFollow", map) == null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean selectOppositeFollow(String target, String owner) {
		Map map = new HashMap();
			map.put("target", target);
			map.put("owner", owner);
		
		SqlSession session=factory.openSession();
		try {
			if (session.selectOne("follow.selectOneFollow", map) == null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// follow 로우 새로 삽입(owner, target 모두 not null)
	public int insertFollow(String owner ,String target) {
		Map map = new HashMap();
			map.put("owner", owner);
			map.put("target", target);
		
//		FollowDTO fDTO = new FollowDTO();
//			fDTO.setUser1(user1);
//			fDTO.setUser2(user2);
		
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
	
	public int deleteFollow(String owner, String target) {
		FollowDTO fDTO = new FollowDTO();
			fDTO.setOwner(owner);
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
	
	// 내가 팔로잉한 사람들을 찾는다.
	public List<FollowDTO> selectFollwing(String owner) { // owner 는 나
		Map map = new HashMap<>();
			map.put("owner", owner);
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
	
	// 나를 팔로우하고 있는 사람들을 찾는다.
	public List<FollowDTO> selectFollwer(String target) {  // target 은 나
		Map map = new HashMap<>();
			map.put("target", target);
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
	}
	
	
}
