package sec05.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/login")
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
	    
	    //List<MemberVO> list = dao.listMembers();
	    
		/*
		 * out.print("<html><body>");
		 * out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		 * out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>나이</td></tr>"); for (int i
		 * = 0 ; i < list.size() ; i++) { MemberVO vo = list.get(i); String id =
		 * vo.getId(); String passwd = vo.getPasswd(); String name = vo.getName();
		 * String age = vo.getAge();
		 * 
		 * out.print("<tr><td>" + id + "</td><td>" + passwd + "</td><td>" + name
		 * +"</td><td>" + age + "</td></tr>" );
		 * 
		 * } out.print("</table></body></html>");
		 * 
		 */
	    
	    String user_id = request.getParameter("user_id");
	    String user_pw = request.getParameter("user_pw");
	    
	    MemberVO memberVO = new MemberVO();
	    memberVO.setId(user_id);
	    memberVO.setPasswd(user_pw);
	    
	    boolean result = dao.isExisted(memberVO);
	    if(result) {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("isLogon", true);
	    	
	    	session.setAttribute("login.id", user_id);
	    	session.setAttribute("login.pw", user_pw);
	    	out.print("<html><body>");
	    	out.print("안녕하세요 " + user_id + "님!!<br>");
	    	out.print("<a href='show'>회원정보 보기</a>");
	    	out.print("</body></html>");
	    }else {
	    	out.print("<html><body><center>회원아이디가 틀립니다.<br>");
	    	out.print("<a href='login2.html'>다시 로그인하기</a>");
	    	out.print("</body></html>");
	    }
	    
	    
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
