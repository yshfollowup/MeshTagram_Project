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

	public boolean selectOneFollow(String user1, String user2) {
		Map map = new HashMap();
			map.put("user1", user1);
			map.put("user2", user2);
		
		SqlSession session=factory.openSession();
		try {
			if (session.selectOne("follow.selectOneFollow") == null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean selectOppositeFollow(String user1, String user2) {
		Map map = new HashMap();
			map.put("user1", user1);
			map.put("user2", user2);
		
		SqlSession session=factory.openSession();
		try {
			if (session.selectOne("follow.selectOppositeFollow") == null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// follow 로우 새로 삽입
	public int insertFollow(String user1 ,String user2) {
		Map map = new HashMap();
			map.put("user1", user1);
			map.put("user2", user2);
		
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
	
	// follwing 의 업데이트
	public int updateFollowUser1(String user1) {
		FollowDTO fDTO = new FollowDTO();
			fDTO.setUser1(user1);
			
		SqlSession session = factory.openSession();
		int r = 0;
		try {
			r = session.update("follow.updateFollowUser1", fDTO);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
	// following1,2 모두 0일 떄 삭제
	public int updateFollowUser2(String user1) {
		FollowDTO fDTO = new FollowDTO();
			fDTO.setUser2(user1);
			
		SqlSession session = factory.openSession();
		int r = 0;
		try {
			r = session.update("follow.updateFollowUser2", fDTO);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
	public int deleteFollow(String user1, String user2) {
		FollowDTO fDTO = new FollowDTO();
			fDTO.setUser1(user1);
			fDTO.setUser2(user2);

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
	
	public List<FollowDTO> selectFollwing(String user1, String user2) {
		Map map = new HashMap<>();
			map.put("user1", user1);
			map.put("user2", user2);
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
	
	public List<FollowDTO> selectFollwer(String user1, String user2) {
		Map map = new HashMap<>();
			map.put("user1", user1);
			map.put("user2", user2);
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
