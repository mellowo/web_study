# 서블릿 필터와 리스너 기능 

## 서블릿 속성과 스코프 

* **서블릿 속성(attribute)** 이란 다음 세가지 서블릿 API 클래스에 저장되는 객체(정보)
    * **ServletContext**
    * **HttpSession**
    * **HttpServletRequest**

* **서블릿 스코프(scope)** 는 서블릿 API에 바인딩된 속성에 대한 접근 범위
    * 로그인 상태 유지 기능
    * 장바구니 기능
    * MVC의 Model과 View의 데이터 전달 기능

|스코프 종류 | 해당 서블릿 API | 속성의 스코프|
|-|-|-|
|애플리케이션 스코프 |**ServletContext** |속성은 애플리케이션 전체에 대해 접근 가능 | 
|세션 스코프| **HttpSession** | 속성은 브라우저에만 접근 가능|
|리퀘스트 스코프| **HttpServletRequest** |속성은 해당 요청/응답 사이클에서만 접근 가능|

## 서블릿의 여러 가지 URL 패턴