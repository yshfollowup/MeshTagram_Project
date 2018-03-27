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
public class UploadService2 {
	@Autowired
	ServletContext ctx;
	@Autowired
	PostDAO pDAO;
	
	public File uploadImage(MultipartFile file) {
		Boolean rst = true;
		final long sizeLimit = 1024 * 1024 * 10;
		List<String> result = new ArrayList<>();
		Map<String, Object> map = new LinkedHashMap<>();
		if (file == null) {
			return null;
		}
		File target = null;
		int i=0;
		String path = ctx.getRealPath("/");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		System.out.println(path);

		
		String str = sdf.format(System.currentTimeMillis());
		Long size = file.getSize();
		String original = file.getOriginalFilename();
		System.out.println(str);
		if (size < sizeLimit) {
			target = new File(path, str + "." + FilenameUtils.getExtension(original));
			//String targetName = target.getName();
			//result.add("/" + targetName);
			//System.out.println(result);
			if(rst) {
				try {
					file.transferTo(target);
					rst = true;
				} catch (Exception e) {
					rst = false;
					e.printStackTrace();
				}
			}
		}
		return target;
	}
}
