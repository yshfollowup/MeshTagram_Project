package listeners;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener{
	//생성될때 작동
	public void sessionCreated(HttpSessionEvent e) {
		System.out.println("[SYSTEM] sessionCreate .. "+e.getSession().getId());
	//e.getSession().setAttribute(arg0, arg1);
	}

	public void sessionDestroyed(HttpSessionEvent e) {
		System.out.println("[SYSTEM] sessionDestroyed .. "+e.getSession().getId());

	}

}
