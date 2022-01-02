package filter_exam;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class LoginInpl
 *
 */
@WebListener
public class LoginInpl implements HttpSessionBindingListener {

    /**
     * Default constructor. 
     */
    String user_id;
    String user_pw;
    static int total_user=0;
    
    public LoginInpl() {
        // TODO Auto-generated constructor stub
    }

    
	public LoginInpl(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}


	/**
     * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent event)  { 
         // TODO Auto-generated method stub
    	System.out.println("사용자 접속");
    	++total_user;
    }

	/**
     * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent event)  { 
         // TODO Auto-generated method stub
    	System.out.println("사용자 접속 해제");
    	total_user--;
    	
    }
	
}
