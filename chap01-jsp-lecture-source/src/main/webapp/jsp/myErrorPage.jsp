<%@ page
        contentType="text/html;charset=UTF-8"
        language="java"
        import="java.util.Date"
        isErrorPage="true"
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String exceptionType = exception.getClass().getName();
        String exceptionMessage = exception.getMessage();
        Date date = new Date();
    %>

    <h1>커스텀 JSP 에러 페이지입니다!</h1>
    <ul>
        <li>전달받은 예외 타입 : <%= exceptionType %></li>
        <li>전달받은 예외 메세지 : <%= exceptionMessage %></li>
        <li>예외 객체를 전달받은 시간 : <%= date %></li>
        <p><h1>고갱님~ 안타깝게도 에러입니다~</h1></p>
    </ul>
</body>
</html>
