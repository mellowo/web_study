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

//쿠키 get
Cookie[] allValues=request.getCookies();		
System.out.println(allValues[0].getName());
System.out.println(URLDecoder.decode(allValues[0].getValue(),"utf-8"));
```
  
### 세션   
* • 정보가 서버의 메모리에 저장됩니다.
* • 브라우저의 세션 연동은 세션 쿠키를 이용합니다.
* • 쿠키보다 보안에 유리합니다.
* • 서버에 부하를 줄 수 있습니다.
* • 브라우저（사용자）당 한 개의 세션（세션 id） 이 생성됩니다.
* • 세션은 유효 시간을 가집니다（기본 유효 시간은 30분입니다）.
* • 로그인 상태 유지 기능이나 쇼핑몰의 장바구니 담기 기능 등에 주로 사용됩 니 다.

|반환 타입| 메서드 |설명|
|-|-|-|
|Object| getAttribute(String name)| 속성 이름이 name인 속성 값을 Object 타입으로 반환합니다. 해당되는 속성 이름이 없을 경우 null 값을 반환합니다.|
|Enumeration| getAttributeNames()| 세션 속성 이름들을 Enumeration 객체 타입으로 반환합니다.|
|long| getCreationTime() |1970년 1월 1 일 0시 0초를 기준으로 현재 세션이 생성된 시간까지 경과한 시간을 계산하여 1/1000초 값으로 반환합니다.|
|String| getId() |세션에 할당된 고유 식별자를 String 타입으로 반환합니다.|
|int| getMaxInactivelnterval()|현재 생성된 세션을 유지하기 위해 설정된 세션 유지 시간을 int 타입으로 반환합니다.|
|void| invalidate() |현재 생성된 세션을 소멸합니다.|
|boolean| isNew() |최초로 생성된 세션인지 기존에 생성되어 있었던 세션인지 판별합니다.|
|void| removeAttribute(String name)|세션 속성 이름이 name인 속성을 제거합니다.|
|void| setAttribute(String name, Object value)|세션 속성 이름이 name인 속성에 속성 값으로 value를 할당합니다.|
|void| setMaxInactivelnterval(int interval)|세션을 유지하기 위한 세션 유지 시간을 초 단위로 설정합니다.|
