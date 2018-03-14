package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

		//회원가입 페이지
	@RequestMapping("/register.do")
	public String registerHandle() {
		
		return "insta_register";
	}
	//로그인 페이지
	@RequestMapping("/login.do")
	public String indexHandle() {
		
		return "insta_login";
	}
	//게시물 업로드 페이지
	@RequestMapping("/upload.do")
	public String uploadHandle() {
		
		return "insta_upload";
	}
	//메인 페이지
	@RequestMapping("/main.do")
	public String mainHandle() {
		
		return"insta_main";
	}
}
