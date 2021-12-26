# 8장 서블릿 확장 API사용하기

## 서블릿 포워드 기능 사용하기   
포워드 기능 : 하나의 서블릿에서 다른 서블릿이나 JSP와 연동하는 방법을 말한다.   	
redirect - HttpServletResponse 객체의 sendRedirect() 메서드를 이용   
```
response.sendRedirect(“mapping_name”)   
```
			
		refresh - HttpServletResponse 객체의 addHeader() 메서드를 이용함
			response.addHeader(“Refresh”,”1;url=mapping_name”);  
			
		location - 자바스크립트 location 객체의 href 속성을 이용함
			location.href=’요청할 서블릿 또는 JSP’;
		
		dispatch - 일반적으로 포워딩 기능을 지칭함
			RequestDispatcher dis= request.getRequestDispatcher("포워드할 서블릿 또는 JSP");
			dis.forward(request,response);

## 바인딩 


	바인딩 : 서블릿에서 다른 서블릿 또는 JSP로 대량의 데이터를 공유하거나 전달할때 사용하능 기능 
	
		setAttribute(String name,Object obj) - 자원(데이터)을 각 객체에 바인딩함
		
		getAttribute(String name) - 각 객체에 바인딩된 자원(데이터)을 name으로 가져옴

		removeAttribute(String name) - 각 객체에 바인딩된 자원(데이터)을 name으로 제거함
		
		
## ServletContext와 ServletConfig 사용법   

	javax.servlet.ServletContext로 정의되어 있음
	서블릿과 컨테이너 간의 연동을 위해 사용함
	컨텍스트(웹 애플리케이션)마다 하나의 ServletContext가 생성됨
	서블릿끼 리 자원(데이터)을 공유하는 데 사용함
	컨테이너 실행 시 생성되고 컨테이너 종료 시 소멸됨

 	서블릿에서 파일 접근 기능
		- 자원 바인딩 기능
		- 로그 파일 기능
		- 컨텍스트에서 제공하는 설정 정보 제공 기능

load-on-startup 기능 사용하기    
