package mvc.service;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.model.AccountDTO;



@Repository
public class AccountDAO {
	
	@Autowired
	SqlSessionFactory factory;
	
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
	public List<AccountDTO> selectAllAccount(String id) {
		Map map = new HashMap<>();
			map.put("id", id);
			List<Map> amap=null;
		List<AccountDTO> aList=null;
			
		SqlSession session = factory.openSession();
		try {
			amap = session.selectList("account.selectAllAccount", map);
			aList = session.selectList("account.selectAllAccount", map);
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
