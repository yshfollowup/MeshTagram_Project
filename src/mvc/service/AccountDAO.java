package mvc.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.model.AccountDTO;
import mvc.model.FollowDTO;



@Repository
public class AccountDAO {
	
	@Autowired
	SqlSessionFactory factory;
	//회원 가입
	public int insertAccount(String id, String pass, String email, String name) {
		AccountDTO aDTO = new AccountDTO();
			aDTO.setId(id);
			aDTO.setPass(pass);
			aDTO.setEmail(email);
			aDTO.setName(name);
		
		SqlSession session = factory.openSession();
		int r = 0;
		try {
			r = session.insert("account.insertAccount", aDTO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	//처음 로그인 시도
	public AccountDTO selectOneAccount(String id, String pass) {
		Map map = new HashMap<>();
			map.put("id", id);
			map.put("pass", pass);
		AccountDTO aDTO = new AccountDTO();
			
		SqlSession session = factory.openSession();
		try {
			aDTO = session.selectOne("account.selectOneAccount", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aDTO;
		}
	}
	//새로고침 --쿠키
	public AccountDTO selectOneAccountre(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		AccountDTO aDTO = new AccountDTO();
			
		SqlSession session = factory.openSession();
		try {
			aDTO = session.selectOne("account.selectOneAccountre", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aDTO;
		}
	}
	//나를 제외하고 모든 회원을 출력
	public List<AccountDTO> selectAllAccountNotMe(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		List<AccountDTO> aList=null;
			
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectAllAccountNotme", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
	
	// 팔로잉 (내가 팔로우한 친구) 모두 선택
	public List<AccountDTO> selectAllAccountFollowing(String id) {  // id 는 사용자
		Map map = new HashMap<>();
			map.put("id", id);
		List<AccountDTO> aList = null;

		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectAllAccountFollowing", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
		
	}
	
	// 팔로워 (나를 팔로우한 친구들) 모두 선택
	public List<AccountDTO> selectAllAccountFollower(String target) {  // target 은 사용자
		Map map = new HashMap<>();
			map.put("target", target);
		List<AccountDTO> aList = null;

		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectAllAccountFollower", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
		
	}
	

	public int deleteAccount(String id, String pass) {
		Map map = new HashMap<>();
			map.put("id", id);
			map.put("pass", pass);
			
		SqlSession session = factory.openSession();
		int r=0;
		try {
			r = session.delete("account.deleteAccount", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	//업데이트
	public int updateAccount(String id) {
		
		SqlSession session = factory.openSession();
		int r=0;
		try {
			r = session.update("account.updateAccount", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}

}
