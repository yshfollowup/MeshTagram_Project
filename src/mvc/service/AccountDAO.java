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
	
	// 나를 제외한 모든 회원 중 follow 수 top5 출력
	public List<AccountDTO> selectTop5Account(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		List<AccountDTO> aList=null;
		
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectTop5Account", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}

	// 유저의 맞팔 리스트
	public List<AccountDTO> selectFollowEachOther(String owner) {
		Map map = new HashMap<>();
			map.put("owner", owner);
		List<AccountDTO> aList = null;
		
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectFollowEachOther", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
	
	
	// 팔로잉 (내가 팔로우한 친구) 모두 선택
	public List<AccountDTO> selectAllAccountFollowing(String owner) {  // owner 는 나
		Map map = new HashMap<>();
			map.put("owner", owner);
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
	public List<AccountDTO> selectAllAccountFollower(String target) {  // target 은 나
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
	//팔로워가 없어도 전체 리스트를 볼수 있게 모두 선택
	public List<AccountDTO> selectAllmemberCheck(String target) {  // target 은 나
		Map map = new HashMap<>();
			map.put("id", target);
		List<AccountDTO> aList = null;

		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectAllmemberCheck", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
	//============================================================================
	//여러개 아이디를 리스트로 받을때 
	public List<AccountDTO> selectSearchLikeListAccount(List param){
		Map map = new HashMap<>();
	List<AccountDTO> aList = null;
	map.put("listId", param);
	System.out.println("아아아아"+map+"아아아아아");
	SqlSession session = factory.openSession();
	try {
		aList = session.selectList("account.selectSearchLikeListAccount", map);
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		session.close();
		return aList;
	}
}
	// 삭제
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
	
	//업데이트(여러개 or 하나만)
	public int updateAccount(Map param) {
		
		SqlSession session = factory.openSession();
		int r=0;
		try {
			r = session.update("account.updateAccount", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
	public int updateProfile(Map param) {
		SqlSession session = factory.openSession();
		int r=0;
		try {
			r = session.update("account.updateProfile", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
	//비밀번호 변경
	public int updatePassword(Map param) {
		SqlSession session = factory.openSession();
		int r = 0;
		try {
			r = session.update("account.updatePassword", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return r;
		}
	}
	
	//프로필 사진 가져오기
	public List<AccountDTO> selectProfile(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
		List<AccountDTO> aList = null;
		SqlSession session = factory.openSession();
		try {
			aList = session.selectList("account.selectProfile", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
			return aList;
		}
	}
}
