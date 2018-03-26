package filter;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthFilter implements Filter{

	public void init(FilterConfig config) throws ServletException {
		System.out.println("authFilter start");
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		ServletContext ctx=(ServletContext) req.getAttribute("users");
		
		////////////////////
		String a=null;
		HttpServletRequest request = (HttpServletRequest)req;
		String uri=request.getRequestURI();
		System.out.println("TARGET URI :"+ uri);
		HttpServletResponse response=(HttpServletResponse)resp;
		HttpSession session= request.getSession();
		session.setAttribute("uri", uri);
		/////////////////////////
		
		
		if(session.getAttribute("setId")!=null ) {
			chain.doFilter(req, resp);
			
		}else {
			response.sendRedirect("/account/loginPage.do");
			
		}
		
	}


	public void destroy() {
		
	}
}
