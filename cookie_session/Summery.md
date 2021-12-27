# 세션트래킹

* HTTP 프로토콜은 서버-클라이언트 통신 시 **stateless** 방식으로 통신을 함.
* 브라우저에서 새 웹 페이지를 열면 기존의 웹 페이지나 서블릿에 관한 어떤 연결 정보도 새 웹 페이지에서는 알 수 없음 
* 사용자 입장에서 웹페이지 사이의 상태나 정보를 공유하려면 프로그래머가 **세션트래킹**이라는 웹페이지 연결 기능을 구현해야함   

## 세션트래킹의 종류 
* **`<hidden>` 태그** : HTML의 <hidden> 태그를 이용해 웹 페이지들 사이의 정보를 공유함 
* **URL Rewriting** : GET 방식으로 URL 뒤에 정보를 붙여서 다른 페이지로 전송함
* **쿠키** : 클라이언트 PC의 Cookie 파일에 정보를 저장한 후 웹 페이지들이 공유함
* **세션** : 서버 메모리에 정보를 저장한 후 웹 페이지들이 공유함

### hidden 태그
```html
  <form name="frmLogin" method="post" action="login" encType="UTF-8">
 	아이디 : <input type="text" name="user_id"><br>
 	비밀번호 : <input type="password" name="user_pw"><br>
 	<input type="submit" value="로그인">
 	<input type="reset" value="다시입력">
 	<input type="hidden" name="user_address" value="서울시 성북구">
 	<input type="hidden" name="user_email" value="test@gmail.com">
 	<input type="hidden" name="user_hp" value="010-111-2222">
 </form>
```

### URL Rewriting
```java
out.print("<a href='/cookie_session/second?user_address="+user_address+"'>두 번째 서블릿으로 보내기</a>");
```

### 쿠키   
|속성|Persistence쿠키|Session 쿠키|
|-|-|-|
|생성위치|파일로생성|브라우저메모리에 생성|
|종료 시기|쿠키를 삭제하거나 쿠키 설정 값이 종료된 경우|브라우저를 종료한 경우|
|최초 접속 시 전송 여부|최초 접속 시 서버로 전송|최초 접속 시 서버로 전송되지 않음|
|용도|로그인 유무 또는 팝업창을 제한할 때|사이트 접속 시 Session 인증 정보를 유지할 때|
|방법|setMaxAge(int) 양수지정|setMaxAge(int) 음수지정하거나 setMaxAge(int) 사용x|

```java
Cookie c=new Cookie("cookieTest",URLEncoder.encode("JSP프로그래밍입니다.","utf-8"));

//Persistence쿠키
c.setMaxAge(24*60*60); 

//Session 쿠키
c.setMaxAge(-l); 

response.addCookie(c)
```
