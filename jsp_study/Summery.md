# JSP

* **JSP**란 서블릿의 기능 중 별도로 화면 기능을 디자이너가 작업하기 쉽게 하기위해 등장 하였음.   
	* jsp는 HTML, CSS와 자바스크립트를 기반으로 JSP요소들을 사용해 화면을 구현함.
		* **문제점**
			* 웹 프로그램의 화면 기능이 복잡해지므로 서블릿의 자바 기반으로 화면 기능 구현 시 어려움이 발생한다.
			* 디자이너 입장에서 화면 구현 시 자바 코드로 인해 작업이 어렵다.
			* 서블릿에 비즈니스 로직과 화면 기능이 같이 있다 보니 개발 후 유지관리가 어렵다.   
		* **해결책**
			* 서블릿의 비즈니스 로직과 결과를 보여주는 화면 기능을 분리하자!
			* 비즈니스 로직과 화면을 분리함으로써 개발자는 비즈니스 로직 구현에 집중하고, 디자이너는 화면 기능구현에만 집중하자!
			* 개발 후 재사용성과 유지관리가 휠씬 수월해진다


## JSP의 3단계 작업 과정

* **변환단계** : 컨테이너는 JSP 파일을 자바 파일로 변환 
* **컴파일 단계** : 컨테이너는 변환된 자바 파일을 클래스 파일로 컴파일
* **실행단계**  : 컨테이너는 클래스 파일을 실행하여 그 결과를 브라우저로 전송해 출력함

**변환된 java, class파일 위치** : %이클립스_workspace% \.metadata\.plugins\org.eclipse.wst.server.core\tmpO\work\Catalina\localhost\pro11\org\apache
\jsp



## JSP페이지 구성 요소

* **디렉티브 태그**
* **스크립트 요소**
* **표현 언어**
* **내장 객체**
* **액션 태그**
* **커스텀 태그**

### 1. 디렉티브 태그
* **page 디렉티브 태그**

```java
<%@ page contentType="text/html;charset=utf-8" 
	          import="java.util.*" 
	          language="java" 
	          session="true" 
	          buffer="8kb" 
	          autoflush="true" 
	          isThreadSafe="true" 
	          info="(ShoppingMall................)" 
	          isErrorPage="false" 
	          errorPage="" %> 
```


|속성|기본값|설명|
|-|-|-|
info| 없음| 페이지를 설명해 주는 문자열을 지정합니다.|
|language| "java"| JSP 페이지에서 사용할 언어를 지정합니다.|
|contentType |"text/html"| JSP 페이지 출력 형식을 지정합니다.|
|import| 없음| JSP 페이지에서 다른 패키지의 클래스를 임포트할 때 지정합니다.|
|session| "true"| JSP 페이지에서 HttpSession 객체의 사용 여부를 지정합니다.|
|buffer| "8kb" |JSP 페이지 출력 시 사용할 버퍼 크기를 지정합니다.|
|autoFlush |"true" |JSP 페이지의 내용이 출력되기 전 버퍼가 다 채워질 경우 동작을 지정합니다.|
|errorPage |"false" |JSP 페이지 처리 도중 예외가 발생할 경우 예외 처리 담당 JSP 페이지를 지정합니다.|
|isErrorPage |"false" |현재 JSP 페이지가 예외 처리 담당 JSP 페이지인지를 지정합니다.|
|pageEncoding| "ISO-8859-1"  | JSP 페이지에서 사용하는 문자열 인코딩을 지정합니다.|
|isELIgnored |"true" |JSP 2.0 버전에서 추가된 기능으로 EL 사용 유무를 지정합니다.|


* **include 디렉티브 태그** : 공통으로 사용되는 JSP 페이지를 미리 만들어 놓고 다른 JSP페이지 요청사용되는 태그

```JSP
<%@ include file="duke image.jsp" %>
```