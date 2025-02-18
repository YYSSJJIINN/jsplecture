<%@ page import="java.util.Date" %><%--
    1. 페이지 지시자 태그:
--%>
<!--
    필기.
    페이지에 대한 설정을 하는 지시자 태그이다.
    현재 페이지에 스크립틀릿 태그를 이용하여 작성하는 문법은 Java라는 의미이며,
    response header에 응답을 위한 설정도 할 수 있다.
    content-type이라는 헤더에 MIME타입과 인코딩방식을 지정한다.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--
    설명. JSP는 표면상으로는 HTML문서와 유사하다.
    하지만 JSP 컨테이너가 최초 JSP 요청 시 JSP를 서블릿으로 변환시키고, 서블릿 컨테이너가 변환된 서블릿을 이용해 인스턴스를 생성하고 호출한다.
    JSP는 요청 시마다 기존 JSP 파일이 변환되었는지를 확인하여 변경이 없으면 기존에 생성한 인스턴스를 사용하고,
    변경이 있으면 translate 과정을 통해 인스턴스를 재생성한다.
    jsp가 작동하는 순서는 translate -> compile -> instance 생성 -> run 이다.
-->

<!--
    설명. jsp는 html 기반의 문서에서 Java 문법을 사용할 수 있도록 지원한다.
    jsp의 태그 엘리먼트를 이용하여 사용 목적별로 Java 코드를 이용할 수 있도록 지원한다.
    jsp의 태그 엘리먼트는 directive, declare, scriptlet, expression, comment 가 있다.
-->

<!--
    설명. 페이지 상단의 지시자 태그는 page에 대한 설정을 하는 page 지시자 태그라고 한다.
    page 내의 여러 설정 등을 할 수있는 부분이다. 뒤에서 자세히 살펴볼 것이다.
 -->

<!-- 설명. 2. jsp 주석 태그 -->
<!-- HTML 주석은 내부에서 out.write()로 변환되며 클라이언트 화면에는 노출되지 않는다. -->
<!-- 그러나 브라우저의 개발자 도구의 elements에서 확인 가능하다. -->
<%-- 반면, JSP 주석은 JSP 파일 내에만 존재하기에 변환된 Servlet 코드에서도 보이지 않는다. --%>
<%-- // Java 주석은 변환된 Servlet 코드에서는 노출되지만, 클라이언트까지 노출되지 않는다. --%>

<%--
    설명. 3. 선언태그
    JSP 파일이 서블릿으로 변환될 때 선언 태그 내에 작성한 내용을 필드로 선언해준다.
--%>
<%!
    private String name;
    private int age;
//    private Date date;
    private java.util.Date date;
%>

<%--
    설명. 4. 스크립틀리(scriptlet) 태그
    간단한 Java 코드를 작성할 수 있는 부분으로 선언 태그에서 작성한 내용을 초기화 및 출력할 수 있으며 간단한 로직도 구현 가능하다.
    여기서 작성하는 Java 코드는 실제 Java 코드이기 때문에 세미콜론(;)을 작성하지 않으면 compile 과정에서 에러가 발생할 수 있다.
--%>
<%
    System.out.println("안녕 세상아!");

    // 스크립틀릿 태그 내부에서는 이렇게 Java 스타일의 주석도 작성 가능하다.
    /*
    * 블록 주석도 가능하다.
    * 선언 태그에서 선언한 두 필드 변수를 초기화한 후 출력해보자.
    * */
    name = "홍길동";
    age = 18;

    System.out.println("name = " + name);
    System.out.println("age = " + age);

    // 간단한 로직도 작성 가능하다.
    for(int i = 0; i < name.length(); i++) {
        System.out.println(name.charAt(i));
    }
%>

<%--
    설명. 5. 표현(expression) 태그
    내부적으로 PrintWriter 스트림을 이용해 실제 HTML 요소를 브라우저에 출력하는 기능이다.
--%>
<p>이름 : <%= name %></p><br>
<p>나이 : <%= age %></p><br>
<p>현재시간 : <%= new Date() %></p><br>
</body>
</html>
