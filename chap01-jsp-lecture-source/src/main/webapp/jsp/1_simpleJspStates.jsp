<%--
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
</body>
</html>
