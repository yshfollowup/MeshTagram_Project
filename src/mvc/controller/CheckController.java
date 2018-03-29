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
	
	@RequestMapping("/account/idCheck.do")
	@ResponseBody
	public String idCheckHandle(@RequestParam(name="id") String id) {
		System.out.println(id);
		List<AccountDTO> idList = aDAO.selectAllmemberCheck(id);
		for (AccountDTO list : idList) {
			String getId = list.getId();
			System.out.println(getId);
			if (getId.equals(id)) {
				return "-1";
			} else {
				return "1";
			}
		}
		return "1";
	}

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
		
		return "insta_join";
	}
}
