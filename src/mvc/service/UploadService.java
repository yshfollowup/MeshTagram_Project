package mvc.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
	
	public boolean imageUpload(MultipartFile[] files) {
		boolean rst = true;
		if (files.length == 1) {
			File target = null;
			String path = ctx.getRealPath("/");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyMMddHHmmss");
			System.out.println(path);

			
			List<String> result = new ArrayList<>();
			for (MultipartFile file : files) {
				String str = sdf.format(System.currentTimeMillis());
				Long size = file.getSize();
				String original = file.getOriginalFilename();
				if (size < (1024 * 1024 * 10)) {
					target = new File(path, str +"."+ FilenameUtils.getExtension(original));
					String targetName = target.getName();
					
					result.add("/" + targetName);
					//System.out.println(result);
					try {
						file.transferTo(target);
						rst = true;
					} catch (Exception e) {
						rst = false;
					}
				}
			}
		}
		return rst;
	}
}
