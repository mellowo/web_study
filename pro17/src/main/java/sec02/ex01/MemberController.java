package sec02.ex01;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sec01.ex01.MemberVO;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO memberDAO;
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		memberDAO = new MemberDAO();
	
	}
	
	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println(action);
		
		if(action ==null || action.equals("/listMembers.do")) {
			List<sec02.ex01.MemberVO> memberList = memberDAO.listMembers();
			
//			for (MemberVO vo : memberList) {
//				System.out.println(vo.getId());
//			}
			request.setAttribute("memberList", memberList);
			nextPage = "/test02/listMembers.jsp";
			
		}else if ( action.equals("/addMember.do")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			sec02.ex01.MemberVO memberVO = new sec02.ex01.MemberVO(id,pwd,name,email);
			memberDAO.addMember(memberVO);
			nextPage = "/member/listMembers.do";
			
		}else if (action.equals("/memberForm.do")) {
			nextPage ="/test02/memberForm.jsp";
		}else {
			
			List<sec02.ex01.MemberVO> memberList = memberDAO.listMembers();
			request.setAttribute("memberList", memberList);
			nextPage = "/test02/listMembers.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
