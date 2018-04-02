package mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;
import mvc.service.JoinService;

@Controller
public class CheckController {
	@Autowired
	AccountDAO aDAO;
	@Autowired
	JoinService js;
	@Autowired
	Gson gson;
	
	//가입할 때 id 중복 체크
	@RequestMapping(path="/account/idCheck.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String idCheckHandle(@RequestParam(name="id") String id) {
		System.out.println(id);
		List<AccountDTO> idList = aDAO.selectAllAccount();
		for (AccountDTO list : idList) {
			String getId = list.getId();
			System.out.println(getId);
			if (getId.equals(id)) 
				return "{\"result\": false}";
		}
		return "{\"result\": true}";
	}

	//이메일 인증 체크
	@RequestMapping("/account/check.do")
	public String emailCheckHandle(@RequestParam String key,HttpServletRequest req, ModelMap map) {
		HttpSession se=req.getSession();
		String rst=(String)se.getAttribute("rst");
		String email=(String)se.getAttribute("email");
		//System.out.println("key"+key+"받았다."+rst);
		if(rst.equals(key)) {
			boolean a=true;
			//System.out.println("성공"+email+rst);
			map.put("email", email);
			map.put("rst", a);
			
		}else {
			System.out.println("실패");
		}
		
		return "insta_join";
	}
	
	//패스워드 중복 체크
	@RequestMapping(path="/account/passCheck.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String checkPassHandle(@RequestParam Map param) {
		String pass = (String) param.get("pass1");
		String passConfirm = (String) param.get("pass2");
		//System.out.println(pass +" / "+ passConfirm);
		if (!pass.equals(passConfirm))
			return "{\"result\": false}";
		else
			return "{\"result\": true}";
	}
	
	@RequestMapping("/account/authPass.do")
	public String authPassHandle(HttpServletRequest req, ModelMap modelMap) {
		//HttpSession session = req.getSession();
		//String email = (String) session.getAttribute("email");
		//System.out.println("세션에서 가져온 email : " + email);
		//AccountDTO aDTO = aDAO.selectOneAccountReByEmail(email);
		//modelMap.addAttribute("aDTO", aDTO);
		return "insta_pass_reset";
	}
	
	//패스워드 잊어버렸을 때 이메일로 전송 후 db에 바뀐 비밀번호 저장
	@RequestMapping(path="/account/changePass.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String changePasswordHandle(@CookieValue(name="setId") String setId, @RequestParam String email) {
		//System.out.println(email);
		String id = setId;
		String getEmail = aDAO.selectEmail(id).getEmail();
		if (email.equals(getEmail)) {
			String newPass = js.sendNewPass();	//이메일로 새 비밀번호가 전송됨
			System.out.println(newPass);
			Map param = new HashMap();
			param.put("pass", newPass);
			aDAO.updatePassword(param);			
			return "{\"result\": true}";
		}
		return "{\"result\": false}";
	}
}
