package listeners;

import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class SessionContextListener implements ServletContextListener, ServletContextAttributeListener{


	public void contextInitialized(ServletContextEvent e) {
		ConcurrentHashMap<String, String> userMap=new ConcurrentHashMap<>();
		ServletContext ctx=e.getServletContext();//JSP 에서 사용되는 Application 과 동일(웹 어플리케이션의 유일객체)
		System.out.println(userMap+"유저맵 받음");
		ctx.setAttribute("users", userMap);
	}


	public void attributeAdded(ServletContextAttributeEvent e) {
		
	}


	public void attributeReplaced(ServletContextAttributeEvent e) {
		System.out.println("[Server]"+e.getServletContext().getAttribute("users"));//변화가 될때마다 
	}
	public void contextDestroyed(ServletContextEvent e) {
		
	}
	public void attributeRemoved(ServletContextAttributeEvent e) {
		
	}
}
