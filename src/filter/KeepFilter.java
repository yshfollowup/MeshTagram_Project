package filter;

import java.io.IOException;
import java.sql.*;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class KeepFilter implements Filter {


	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpSession session = request.getSession();
		if (session.isNew()) {
			Cookie[] ar = request.getCookies(); 
			Cookie t = null;
			if (ar != null) {
				for (Cookie a : ar) {
					if (a.getName().equals("keep")) {
						t = a;
						break;
					}
				}
			}
			if (t != null) {
				String id = t.getValue();
						session.setAttribute("setId", id); // id 같은걸 올려둠.
			}
		}
		chain.doFilter(req, resp);
		
		
	}

	public void init(FilterConfig config) throws ServletException {
		
	}

	public void destroy() {
		
	}
}
