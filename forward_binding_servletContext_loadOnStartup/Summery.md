# 8장 서블릿 확장 API사용하기

서블릿 포워드 기능 사용하기   
	포워드 기능 : 하나의 서블릿에서 다른 서블릿이나 JSP와 연동하는 방법을 말한다.   
	
		redirect - HttpServletResponse 객체의 sendRedirect() 메서드를 이용   
			response.sendRedirect(“mapping_name”)   
			
		refresh - HttpServletResponse 객체의 addHeader() 메서드를 이용합니다.
			response.addHeader(“Refresh”,”1;url=mapping_name”);  
			
		location - 자바스크립트 location 객체의 href 속성을 이용합니다.
			location.href=’요청할 서블릿 또는 JSP’;
		
		dispatch - 일반적으로 포워딩 기능을 지칭합니다.
			RequestDispatcher dis= request.getRequestDispatcher("포워드할 서블릿 또는 JSP");
			dis.forward(request,response);

서블릿의 여러가지 포워드방법   
dispatch를 이용한 포워드 방법   
바인딩    
ServletContext와 ServletConfig 사용법   
load-on-startup 기능 사용하기    
