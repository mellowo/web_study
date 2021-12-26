# 8장 서블릿 확장 API사용하기

서블릿 포워드 기능 사용하기   
	포워드 기능 : 하나의 서블릿에서 다른 서블릿이나 JSP와 연동하는 방법을 말한다.   
		redirect   
			response.sendRedirect(“mapping_name”)   
		refresh   
			response.addHeader(“Refresh”,”1;url=mapping_name”);   
		location   
		
		dispatch   

서블릿의 여러가지 포워드방법   
dispatch를 이용한 포워드 방법   
바인딩    
ServletContext와 ServletConfig 사용법   
load-on-startup 기능 사용하기    
