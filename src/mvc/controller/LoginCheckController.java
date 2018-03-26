package mvc.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class LoginCheckController {

		@RequestMapping(path="/loginCheck", method= RequestMethod.GET)
		public String loginCheck(HttpServletRequest req, HttpServletResponse resp) {
			String returnURL="";
			if("setId".equals(req.getParameter("id"))) {
				Map map =new HashMap<>();
				map.put("setId_id", "setId");
				req.getSession().setAttribute("id", map);
				System.out.println(req.getRequestURI());
				returnURL=req.getRequestURI();
			}else {
				
				return "insta_login";
			}
				
			return returnURL;
		}
}
