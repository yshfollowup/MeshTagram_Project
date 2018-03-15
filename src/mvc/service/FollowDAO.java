package mvc.service;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.model.FollowDTO;

@Repository
public class FollowDAO {
	@Autowired
	SqlSessionFactory factory;
	
	public int insertFollow(String me ,String target) {
		FollowDTO fDTO=new FollowDTO();
		fDTO.setMe(me);
		fDTO.setTarget(target);
		SqlSession session=factory.openSession();
		int r =0;
		try {
			r= session.insert("follow.insertFollow",fDTO);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			return r;
		}
	}
	
	
}
