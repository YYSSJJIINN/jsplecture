<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>--%>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
					pageEncoding="UTF-8" />
<html>
<head>
	<title>Title</title>
</head>
<body>
  <!-- Note. useBean 작성 전에 com.el.model.dto.MemberDTO.java 먼저 작성하자. -->
  <h1><%= request.getAttribute("name") %>님 환영합니다.</h1>

  <h2>jsp:useBean 활용하기</h2>
  <!-- 설명. setProperty 사용 시 자료형이 일치하지 않으면 에러가 발생한다. -->
  <jsp:useBean id="member" class="com.ohgiraffers.el.model.dto.MemberDTO" scope="page"/>
  <jsp:setProperty property="name" name="member" value="홍길동"/>
  <%--<jsp:setProperty property="age" name="member" value="홍길동"/>--%>
  <jsp:setProperty property="age" name="member" value="20"/>
  <jsp:setProperty property="phone" name="member" value="010-1234-5678"/>
  <jsp:setProperty property="email" name="member" value="hong@teach.com"/>

  이름 : <jsp:getProperty property="name" name="member"/> <br>
  나이 : <jsp:getProperty property="age" name="member"/> <br>
  전화번호 : <jsp:getProperty property="phone" name="member"/> <br>
  이메일 : <jsp:getProperty property="email" name="member"/> <br>
</body>
</html>
