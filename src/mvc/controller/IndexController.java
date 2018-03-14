package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

		
	@RequestMapping("/register.do")
	public String registerHandle() {
		
		return "insta_register";
	}
	@RequestMapping("/login.do")
	public String indexHandle() {
		
		return "insta_login";
	}
	@RequestMapping("/upload.do")
	public String uploadHandle() {
		
		return "insta_upload";
	}
}
