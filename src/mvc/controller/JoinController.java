package mvc.controller;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;

import mvc.service.JoinService;

@Controller
@RequestMapping("/account")
public class JoinController {
@Autowired
JoinService joinService;

@RequestMapping(path="/sendKey.do", produces="application/json;charset=utf-8")
@ResponseBody
public String  accountSendKeyHandle(@RequestParam String email, HttpServletRequest req) {
	Map result= joinService.sendAuthKey(email);
	String rst=(String)result.get("key");
	ServletContext ctx=req.getServletContext();
	HttpSession session=req.getSession();
	session.setAttribute("rst", rst);
	session.setAttribute("email", email);
	
	System.out.println("{\"result\":"+result+"}"+rst);
	
	return"{\"result\":"+result+"}";
	
}
}
