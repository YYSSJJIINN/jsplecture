<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <h1>Chap01. JSP</h1>

    <%--
        index.html에서 jsp를 찾아가는 상대 경로는 webapp 디렉토리부터 출발하는 경로로 생각한다.
        이 webapp 디렉토리를 root directory라고도 부른다.
    --%>
    <ul>
        <li><a href="jsp/1_simpleJspStates.jsp">JSP 기본문법</a></li>
        <li><a href="jsp/2_pageDirective.jsp">page 지시자 태그</a></li>
        <li><a href="jsp/3_includeDirective.jsp">include 지시자 태그</a></li>
        <li><a href="jsp/4_request.jsp">JSP를 이용한 응답 처리(포워딩)</a></li>
    </ul>
</body>
</html>