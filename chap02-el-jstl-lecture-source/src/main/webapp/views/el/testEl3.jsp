<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>1-3. parameter 값 받아서 출력하기</h2>
    <%--
        <%
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String[] no = request.getParameterValues("no");
            String option = request.getParameter("option");
        %>

        상품명 : <%= name %> <br>
        가격 : <%= price %> <br>
        제품번호 : <%= no[0] %> 와 <%= no[1] %> <br>
        옵션 : <%= option %>
    --%>

    <!-- 설명. 파라미터는 반드시 스코프를 명시해야 한다. 하지 않으면 값을 못 가져온다. -->
    <%-- 상품명 : ${ name } <br> --%>

    <!-- 설명. el도 연산자를 사용할 수 있다. -->
    상품명 : ${ param.name } <br>
    가격 : ${ param.price } <br>
    제품번호 : ${ paramValues.no["0"] } 와 ${ paramValues.no[1] } <br>
    옵션 : ${ (empty param.option)? "옵션없음" : param.option } <br>
</body>
</html>
