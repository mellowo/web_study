# action tag

스크립트릿의 자바 코드를 제거하고 디자이너 입장에서 더 쉽고 편리하게 작업할 수 있는 태그 형태로 기능을 제공함 

|이름| 형식| 설명|
|-|-|-|
|인클루드 액션 태그 |<jsp:include> |이미 있는 JSP를 현재 JSP에 포함하는 태그|
|포워드 액션 태그 |<jsp:forward>| 서블릿에서 RequestDispatcher 클래스의 포워딩 기능을 대신하는 태그|
|유즈빈 액션 태그| <jsp:useBean> |객체를 생성하기 위한 new 연산자를 대신하는 태그|
|셋프로퍼티 액션 태그 |<jsp:setProperty> |setter를 대신하는 태그|
|겟프로퍼티 액션 태그 |<jsp:getProperty> getter를 대신하는 태그|

## 인클루드 액션 태그 

인클루드 디렉티브 태그와 기능은 동일 , 화면을 분할해서 관리할 때 사용됨 

```java
<jsp:include page="jsp페이지" flush="true 또는 false">

</jsp:include>
```
## 포워드 액션 태그

기존 서블릿에서 사용하는 포워딩 방법 RequestDisparcher를 사용한 방법과 동일한 기능 

```java
<jsp:forward page="포워딩할 JSP 페이지" >

</jsp:forward>
```

## useBean, setProperty, getProperty 액션 태그   

### useBean

자바 빈(Bean)은 웹 프로그래밍 시 여러 객체를 거치면서 만들어지는 데이터를 저장하거나 전달하는데 사용 DTO(Data Transfer Object, 데이터전송 객체) 클래스나 VO(value Object, 값 객체)클래스와 같은 개념   


* 자바 빈을 만드는 방법은 VO 클래스를 만드는 방법과 같음   
 * 속성의 접근 제한자는 private임
 * 각 속성(attribute, property)은 각각의 setter/getter를 가짐   
 * setter/getter 이름의 첫 글자는 반드시 소문자입니다.   
 * 인자 없는 생성자를 반드시 가지며 다른 생성자도 추가할 수 있음   
 
 
```java
<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page" /> 
```

### setProperty, getProperty

```java
<jsp:setProperty name="m" property="id" value=l<%= request.getParameter("id") %>' />
<jsp:setProperty name="m" property="pwd" value=l<%= request.getParameter("pwd") %>' />
<jsp:setProperty name="m" property="name" value=l<%= request.getParameter("name") %>’ />
<jsp:setProperty name="m" property="email" value=l<%= request.getParameter("email") %>' />

or (JSP나 HTML 페이지에서 전달된 데이터를 처리할 때 미리 매개변수 이름과 속성 이름을 동일하게 설정한 경우)

ex) <input type= "password" name="pwd">

<jsp:setProperty name="m" property="id" />
<jsp:setProperty name="m" property="pwd" /> 
<jsp:setProperty name="m" property="name" />
<jsp:setProperty name="m" property="email" />

or (모든 매개변수 값을 설정 함)
<jsp:setProperty name="m" property="*" />
```