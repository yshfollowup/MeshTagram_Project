package mvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.service.AccountDAO;
import mvc.service.JoinService;

@Controller
@RequestMapping("/key")
public class JoinController {
	@Autowired
	JoinService joinService;

	@Autowired
	AccountDAO aDAO;
	
	@RequestMapping(path = "/sendKey.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String accountSendKeyHandle(@RequestParam String email, HttpServletRequest req) {
		Map result = joinService.sendAuthKey(email);
		String rst = (String) result.get("key");
		ServletContext ctx = req.getServletContext();
		HttpSession session = req.getSession();
		session.setAttribute("rst", rst);
		session.setAttribute("email", email);
		session.setAttribute("emailCheck", "true");

		System.out.println("{\"result\":" + result + "}" + rst);

		return "{\"result\":" + result + "}";

	}
	
	@RequestMapping("/join.do")  // join
	public String accountJoinHandle(@RequestParam MultiValueMap<String, String> vmap, HttpServletRequest req,ModelMap map) {
		String id = vmap.getFirst("id");
		String name = vmap.getFirst("name");
		String email = vmap.getFirst("email");
		String pass = vmap.getFirst("pass1");
		System.out.println(id+pass+email+name);
		int r = aDAO.insertAccount(id, pass, email, name);
		if (r == 0) {  // join fail
			System.out.println("[SERVER]: join failed");
			map.put("joinfail", "이메일 중복이거나 다른 이유로 가입을 하지 못하였습니다.");
			return "insta_login";
		}
		HttpSession session = req.getSession();
		session.setAttribute("pass", pass);
		map.put("join", "가입에 성공하셨습니다.");
		System.out.println("[SERVER]: join success");
		return "insta_login";  // join success
	}
}
