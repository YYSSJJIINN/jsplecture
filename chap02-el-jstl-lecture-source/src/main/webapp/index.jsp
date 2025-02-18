<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>EL&JSTL</title>
</head>
<body>
  <h1>Chap02. jsp Action Tag</h1>
  <h3><a href="views/action/testAction.jsp">jsp Action Tag 테스트</a></h3>

  <br>

  <h1>1. EL test</h1>
  <!-- 설명. el패키지 밑에 controller 패키지 추가해서 서블릿을 추가한다. -->
  <h3><a href="test1">1) request.getAttribute() 테스트</a></h3>
  <h3><a href="test2">2) request에 저장된 객체 출력 테스트</a></h3>
  <h3><a href="views/el/testEl3.jsp?name=galaxy&price=95&no=5&no=6&option=삼성">3) parameter로 값 전달한 경우 el 테스트</a></h3>
  <h3><a href="test4">4) requestScope와 sessionScope 테스트</a></h3>

  <br>

  <h1>2. JSTL test</h1>
  <h3><a href="views/jstl/testJstlCore.jsp">1) Core Library Test</a></h3>
  <h3><a href="views/jstl/testJstlFmt.jsp">2) Fmt Library Test</a></h3>
  <h3><a href="views/jstl/testFunction.jsp">3) Function Library Test</a></h3>
</body>
</html>