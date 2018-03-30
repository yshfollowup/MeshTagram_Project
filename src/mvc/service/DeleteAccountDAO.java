package mvc.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DeleteAccountDAO {
	@Autowired
	MongoTemplate template;
	
	public Map<String, Object> insertReason(Map param) {
		Map<String, Object> map = new LinkedHashMap<>();
			map.put("id", param.get("id"));
			map.put("reason", param.get("reason"));
		template.insert(map, "DeleteAccountReason");
		System.out.println("저장 성공");
		return map;
	}
}
