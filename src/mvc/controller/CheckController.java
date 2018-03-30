package mvc.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.model.AccountDTO;
import mvc.service.AccountDAO;

@Controller
public class CheckController {
	@Autowired
	AccountDAO aDAO;
	
	//가입할 때 id 중복 체크
	@RequestMapping(path="/account/idCheck.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String idCheckHandle(@RequestParam(name="id") String id) {
		System.out.println(id);
		List<AccountDTO> idList = aDAO.selectAllmemberCheck(id);
		for (AccountDTO list : idList) {
			String getId = list.getId();
			System.out.println(getId);
			if (getId.equals(id)) 
				return "{\"result\": false}";
			else 
				return "{\"result\": true}";
		}
		return "{\"result\": true}";
	}

	//이메일 인증 체크
	@RequestMapping("/account/check.do")
	public String emailCheckHandle(@RequestParam String key,HttpServletRequest req, ModelMap map) {
		HttpSession se=req.getSession();
		String  rst=(String)se.getAttribute("rst");
		String email=(String)se.getAttribute("email");
		System.out.println("key"+key+"받았다."+rst);
		if(rst.equals(key)) {
			boolean a=true;
			System.out.println("성공"+email+rst);
			map.put("email", email);
			map.put("rst", a);
			
		}else {
			System.out.println("실패");
		}
		
		return "insta_join";
	}
	
	@RequestMapping(path="/account/passCheck.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public boolean checkPassHandle(@RequestParam Map param) {
		String pass = (String) param.get("pass1");
		String passConfirm = (String) param.get("pass2");
		System.out.println(pass +" / "+ passConfirm);
		if (!pass.equals(passConfirm))
			return false;
		else
			return true;
	}
}
