package listeners;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class SessionChangeListener implements HttpSessionAttributeListener{

	public void attributeAdded(HttpSessionBindingEvent e) {
		System.out.println("attributeAdded .. "+e.getName()+"/"+e.getValue());
	}

	public void attributeRemoved(HttpSessionBindingEvent e) {
		System.out.println("attributeRemoved .. "+e.getName()+"/"+e.getValue());

	}

	public void attributeReplaced(HttpSessionBindingEvent e) {
		System.out.println("attributeReplaced .. "+e.getName()+"/"+e.getValue());

	}

}
