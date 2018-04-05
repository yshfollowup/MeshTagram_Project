package mvc.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadService {
	@Autowired
	ServletContext ctx;
	@Autowired
	PostDAO pDAO;
	
	public Map<String, Object> uploadImages(MultipartFile[] files) {
		Boolean rst = true;
		final long sizeLimit = 1024 * 1024 * 10;
		List<String> result = new ArrayList<>();
		Map<String, Object> map = new LinkedHashMap<>();
		if (files == null || files.length == 0) {
			return map;
		}
		File target = null;
		int i=0;
		String path = ctx.getRealPath("/");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		System.out.println("실제 업로드 경로"+path);

		for (MultipartFile file : files) {
			String str = sdf.format(System.currentTimeMillis());
			Long size = file.getSize();
			String original = file.getOriginalFilename();
			System.out.println(str);
			if (size < sizeLimit) {
				target = new File(path, str + "_" + i++ 
						+ "." + FilenameUtils.getExtension(original));
				String targetName = target.getName();
				result.add("/" + targetName);
				map.put("uploadResult", result);
				map.put("uploadPath", target.getPath());
				//System.out.println(result);
				try {
					file.transferTo(target);
					rst = true;
					map.put("successResult", rst);
				} catch (Exception e) {
					rst = false;
				}
			}
		}
		return map;
	}
}
