package sec05.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();
	    MemberDAO dao=new MemberDAO();
	    
	    List<MemberVO> list = dao.listMembers();
	    
	    for (int i=0 ; i < list.size(); i++) {
	    	MemberVO vo = list.get(i);
	    	String id = vo.getId();
	    	String name = vo.getName();
	    	String age = vo.getAge();
	    	
	    	System.out.print(id + " ");
	    	System.out.print(name + " ");
	    	System.out.print(age + " ");
	    	System.out.println();
	    }
	    
	    out.print("<html><body>");
	    out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
	    out.print("<td>아이디</td><td>이름</td><td>나이</td></tr>");
	    for (int i = 0 ; i < list.size() ; i++) {
	    	MemberVO vo = list.get(i);
	    	String id = vo.getId();
	    	String name = vo.getName();
	    	String age = vo.getAge();
	    	
	    	out.print("<tr><td>" + id + "</td><td>" + name +"</td><td>" + age + "</td></tr>" );
	    	
	    }
	    out.print("</table></body></html>");
	    
	    
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
