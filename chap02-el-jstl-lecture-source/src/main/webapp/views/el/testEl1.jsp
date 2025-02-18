<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"
		 import="java.util.*" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
  <h2>1-1. 전달된 request 객체에 저장된 정보 출력하기</h2>
  <!-- Note. 먼저 서블릿에서 attribute로 넘겨준 request 내용 확인. -->
<%--
	<%
	  String name = (String)request.getAttribute("name");
	  int age = (Integer)request.getAttribute("age");
	  String phone = (String)request.getAttribute("phone");
	% >

  name : <%= name %> <br>
  age : <%= age %> <br>
  phone : <%= phone %> <br> --%>
  <!-- Note. 확인이 끝났으면 위의 scriptlet 내용 주석하고, el 표현식으로 출력 확인. -->

  <!-- 설명. el 표현식 작성 시 오타나면 값을 못 가져와 그냥 무시하기 때문에 오타를 잘 확인해야 한다. -->
<%--
	name : ${ requestScope.name } <br>
	age : ${ requestScope.age } <br>
	phone : ${ requestScope.phone } <br>
--%>

  <!-- 설명. 스코프 범위 생략 가능하다. (명시하지 않아도 알아서 찾는다.) -->
  name : ${ name } <br>
  age : ${ age } <br>
  phone : ${ phone } <br>

  <br>

  <h2>items 이름으로 저장된 리스트 정보 출력하기</h2>
<%--
	<% ArrayList items = (ArrayList)request.getAttribute("items"); %>

	<% for(int i = 0; i < items.size(); i++){ %>
		<%= i %> : <%= items.get(i) %> <br>
	<% } %>
 --%>

<%--
	0 : ${ requestScope.items[0] } <br>
	1 : ${ requestScope.items[1] } <br>
	2 : ${ requestScope.items[2] } <br>
--%>

  0 : ${ items[0] } <br>
  1 : ${ items[1] } <br>
  2 : ${ items[2] } <br>
</body>
</html>
