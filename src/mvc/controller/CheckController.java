package mvc.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CheckController {

	@RequestMapping("/account/check.do")
	public String checkHandle(@RequestParam String key,HttpServletRequest req, ModelMap map) {
		HttpSession se=req.getSession();
		String  rst=(String)se.getAttribute("rst");
		String email=(String)se.getAttribute("email");
		System.out.println("key"+key+"받았다."+rst);
		if(rst.equals(key)) {
			boolean a=true;
			System.out.println("설공"+email+rst);
			map.put("email", email);
			map.put("rst", a);
			
		}else {
			System.out.println("실패");
		}
		
		return "insta_register";
	}
}
