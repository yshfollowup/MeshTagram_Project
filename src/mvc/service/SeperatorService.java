package mvc.service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeperatorService {
	@Autowired
	PostDAO pDAO;
	
	public List<List<String>> sendSeperInfo() {
		List<Map> postList =pDAO.findAllPost();	//저장된 모든 게시물 정보
		List<String> idList = new LinkedList<>();	//모든 아이디들
		List<String> tagList = new LinkedList<>();	//모든 태그들(중복 값 제거)
		List<String> annoList = new LinkedList<>();	//모든 어노테이션들
		List<List<String>> result = new LinkedList<>();
		
		for(Map post : postList) {
			String id = post.get("id").toString();
			idList.add(id);
			result.add(idList);	//get(0)
			System.out.println(id);
			
			List tag = (List)post.get("tags");
			System.out.println(tag);
			for(int i = 0; i < tag.size(); i++) {	
				if (!tagList.contains(tag.get(i))) 
					tagList.add((String)tag.get(i));
					result.add(tagList); //get(1)
			}
			
			List annotation = (List) post.get("annotations"); 
			System.out.println(annotation);
			for(int i = 0; i < annotation.size(); i++) {
				if(!annoList.contains(annotation.get(i)))
					annoList.add((String)annotation.get(i));
					result.add(annoList); //get(2)
			}
		}
		
		System.out.println(idList.size());
		System.out.println(tagList.size());
		System.out.println(annoList.size());
		
		return result;
	}
}
