package mvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	MessengerDAO mDAO;
		//회원가입 페이지
	@RequestMapping("/join.do")
	public String registerHandle() {
		
		return "insta_join";
	}
		//로그인 페이지
	@RequestMapping("/loginPage.do")
	public String loginPageHandle() {
		
		return "insta_login";
	}
	//접속
	@RequestMapping(path="/login.do", method=RequestMethod.POST)
	public String loginHandle(@RequestParam MultiValueMap<String, String> vmap, ModelMap modelMap,
			HttpServletRequest req, HttpServletResponse resp, @CookieValue(name="setId", required=false) String setId) {
		String id = vmap.getFirst("id");
		String pass = vmap.getFirst("pass");
		System.out.println("[SERVER]: received id & pass: "+id+", "+pass);
		AccountDTO aDTO = aDAO.selectOneAccount(id, pass);
		if (aDTO == null) {
			System.out.println("[SERVER]: login failed");
			return "insta_login";
		}
		System.out.println("[SERVER]: login success");
		
		//계정 정보
		modelMap.put("aDTO", aDTO);
		
		//사용자 id 쿠키 등록
		String value = new String(id);
		Cookie[] cookies = req.getCookies();
		Cookie cookie = null;
		for (Cookie c : cookies) {
			if (c.equals(value)) {
				cookie = c;
				break;
			}
		}
		
		if (setId != null) {
			System.out.println("[SERVER]: cookie(user id: " + setId + ") exist");
		} else {
			System.out.println("[SERVER]: new cookie created");
			cookie = new Cookie("setId", value);
			cookie.setPath("/");
			cookie.setMaxAge(60*60*24);
			resp.addCookie(cookie);
		}

		//이전에 쓴 모든 게시물 정보
		List<Map> allPost = pDAO.findAllPost();
		if(allPost != null) 
			modelMap.put("allPost", allPost);
		
		//이전에 달았던 모든 댓글 정보
		List<Map> allReply = rDAO.findAllReply();
		if(allReply != null)
			modelMap.put("allReply", allReply);
		
		//이전에 대화한 모든 메시지
		List<Map> allMessage = mDAO.findAllMessage();
		if(allMessage != null)
			modelMap.put("allMessage", allMessage);
		
		System.out.println("[SERVER]: login success");
		return "insta_main";
	}
	//게시물 업로드 페이지
	@RequestMapping("/upload.do")
	public String uploadHandle() {
		
		return "insta_upload";
	}
}
