<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
  <!-- Note. 아래 include 작성 전에 include 대상 파일인 common.jsp 를 작성한다. -->

  <%-- <%@ include file="common.jsp" %> --%>
  <!-- 설명. 닫기 태그로 꼭 닫아주어야 한다. 닫지 않으면 에러가 발생한다. -->
  <jsp:include page="common.jsp"/>
  <h1>여기서부터 내용입니다.</h1>

  <% request.setAttribute("name", "홍길동"); %>

  <!-- 설명. 새로운 페이지를 만들어서 포워딩한다. -->
  <jsp:forward page="testForward.jsp"/>
</body>
</html>
