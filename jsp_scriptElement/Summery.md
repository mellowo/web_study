# JSP 스크립트 요소 기능

**JSP 스크립트요소**란 JSP페이지에서 여러가지 동적인 처리를 제공하는 기능으로 <% %>(스크립트릿) 기호 안에 자바 코드로 구현한다.

## JSP 스크립트 요소

* **선언문** : JSP에서 변수나 메서드를 선언할 때 사용
* **스크립트릿** : JSP에서 자바 코드를 작성할 떄 사용
* **표현식** : JSP에서 변수의 값을 출력할 떄 사용함 

## 선언문 사용하기

* 선언문은 JSP페이지에서 사용하는 **멤버변수**나 **멤버 메서드**를 선언할 때 사용함

```java
<%!
String name = "듀크";
public String getName(){ return name;}
%>
```

## 스크립트릿 사용하기 

* 초기의 JSP에서 자바 코드를 이용해 화면의 동적인 기능을 구현하기위해 사용됨
 * 스크립트릿 안에서는 자바코드만 사용가능 

```java
<% String age=request.getParameter("age"); %>
```

## 표현식 사용하기

* 표현식은 JSP 페이지의 정한 위치에 값을 출력하는 기능임. JSP페이지에서 변수나 메서드의 결괏값 등을 브라우저에 출력하는 용도로 사용함.
 * 표현식안에는 세미클론(;)이 있으면안된다.
```java
<%= 값 or 자바 변수 or 자바 식 %>
<%=lnteger.parselnt(age)+10 %>
<%=age %>
<%=180 %>
```


## JSP 주석문 사용하기

* HTML 주석

```java
<!-- HTML 주석문입니다. -->
```
	
* 자바 주석

```java
/*
자바 주석문입니다.
*/
```

* JSP 주석 

```java
<%-- <%=Integer.parsInt(age)+10 %> --%>
```
 
## 내장 객체(내장변수) 기능

|내장 객체 | 서블릿 타입 | 설명|
|-|-|-|
|request |javax•servlet.http.HttpServletRequest |클라이언트의 요정 정보를 저장|
|response |javax•servlet.http.HttpServletResponse| 응답 정보를 저장|
|out |javax.servlet.jsp.JspWriter |JSP 페이지에서 결과를 출력|
|session |javax•servlet.http.HttpSession |세션 정보를 저장|
|application| javax•servlet.ServletContext| 컨텍스트 정보를 저장|
|pageContext| javax.servlet.jsp.PageContext |JSP 페이지에 대한 정보를 저장|
|page |java.lang.Object |JSP 페이지의 서블릿 인스턴스를 저장|
|config |javax•servlet.ServletConfig| JSP 페이지에 대한 설정 정보를 저장|
|exception |java.lang.Exception| 예외 발생 시 예외를 처리|

### 내장객체 스코프 

|내장 객체 | 서블릿 | 스코프|
|-|-|-|
|page| this| 한 번의 요정에 대해 하나의 JSP 페이지를 공유합니다.|
|request |HttpServletRequest |한 번의 요청에 대해 같은 요정을 공유하는 JSP 페이지를 공유합니다.|
|session |HttpSession |같은 브라우저에서 공유합니다.|
|application |ServletContext 같은 애플리케이션에서 공유합니다.|

## JSP 페이지 예외 처리하기

JSP 페이지에서 오류가 발생하면 예외 처리 페이지를 이용해 예외 처리를 할 수 있음

1. 예외 처리 담당 JSP만듬

```java
<%@ page isErrorPage=‘true' %>
```
2. 예외 발생 시 예외 처리 담당 JSP 파일을 지정 

```java
<%@ page errorPage='addException.jsp' %>
```

### 에러 코드에 따른 예외 페이지 지정

web.xml에서 xml로 각각의 에러 코드에 대한 예외 처리 페이지를 지정 할 수 있다. 이렇게 하면 오류 처리를 일일이 JSP 페이지에서 설정할 필요가 없다.

```xml
<error-page>
<error-code>오류코드</error-code>
<location〉오류 페이지 위치</location>
</error-page>
```

* 만약 한 개의 JSP 페이지에 페이지 디렉티브의 errorPage 속성과 web.xml이 같이 지정되어 있으면 페이지 디렉티브의 errorPage가 우선적으로 나타남.

## JSP welcome 파일 지정하기

web.xml에 다음과 같이 추가

```xml
<welcome-file-list>
<welcome-file>jsp 또는 html 파일 이름l</welcome-file>
<welcome-file>jsp 또는 html 파일 이름2</welcome-file>
</welcome-file-list>
```
