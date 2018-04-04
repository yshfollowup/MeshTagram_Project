package mvc.service;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticDAO {
	@Autowired
	MongoTemplate template;
	
	public List<Map> findAllData() {
		List<Map> list = new LinkedList<>();
		System.out.println("통계자료 받음");
		list = template.findAll(Map.class, "StatisticResults");
		return list;
	}
}
