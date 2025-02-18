<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>JSTL Core Library Tag Test</h1>

    <h2>c:set 태그 : 변수선언</h2>
    <!-- 필기. scope 생략 시 기본은 pageScope이다. -->
    <c:set var="num1" value="100" scope="session" />
    <c:set var="num2" value="200" scope="session" />

    <!-- 필기. c:set으로 사용한 변수는 스크립팅 요소에서 쓰는 것이 불가능하다. -->
    <%-- <% int sum = num1 + num2; %> --%>
    <!-- 설명. 따라서 el로 접근해야 한다. -->
    <c:set var="sum" value="${ num1 + num2 }"/>
    num1 + num2 = ${ sum } <br>

    <% int num3 = 10, num4 = 20; %>
    <!-- 설명. 아래 코드는 에러는 나지 않지만 값은 못 가져온다. -->
    num3 + num4 = ${ num3 + num4 } <br>
    <!-- 필기. 따라서 el을 활용하기 위해서는 스크립팅 요소를 value 속성으로 지정한 c:set 태그가 필요하다. -->
    <c:set var="sum2" value="<%= num3 + num4 %>"/>
    num3 + num4 = ${ sum2 } <br>

    <hr>

    <h2>c:set 태그 : 배열 또는 컬렉션으로 사용할 문자열 선언</h2>
    <c:set var="colors">
        red, yellow, green, orange, blue, magenta
    </c:set>
    colors 배열 값 확인 : ${ colors } <br>

    <!-- 필기. 자바스크립트에서도 el태그를 사용할 수 있다. -->
    <script>
        window.onload = function(){
            var colors = '${ colors }'.split(', ');
            console.log(colors);
        }
    </script>

    <hr/>

    <h2>c:remove 태그 : 변수 삭제</h2>
    num1 변수 값 : ${ num1 } <br>
    num2 변수 값 : ${ num2 } <br>

    <!-- 필기. 삭제 시 scope를 지정하지 않으면 모든 scope의 동일한 이름의 변수를 제거한다. -->
    <c:remove var="num1" scope="session" />
    <c:remove var="num2" scope="session" />
    num1 변수 값 : ${ num1 } <br>
    num2 변수 값 : ${ num2 } <br>

    <hr/>

    <h2>c:out 태그 : 값 출력용</h2>
    <c:out value="core 라이브러리의 <out> 태그는 값을 화면에 출력하는 태그이다." /><br>
    <!-- 필기. escapeXml을 false로 지정하면 <, > 등을 태그로 인식하고, true로 지정하면 일반 문자로 인식한다. -->
    <c:out value="<h2>데이터출력</h2>" escapeXml="false" /> <br>
    <c:out value="<h2>데이터출력</h2>" escapeXml="true" /> <br>
    <!-- 필기. escapeXml 속성의 기본값은 true이다. -->
    <c:out value="<h2>데이터출력</h2>" /> <br>

    <h2>c:out 태그의 default 속성</h2>
    <!-- 설명. el로 가져오는 값이 없는 경우 대체할 값에 대해 default 속성값으로 설정 가능하다. -->
    <c:out value="${ param.name }" default="아무개님" /> <br>

    <hr/>

    <h2>c:if 태그 : 조건문</h2>
    <c:set var="value1" value="9" scope="page" />
    <c:set var="value2" value="3" scope="page" />
    value1의 값은 <c:out value="${ value1 }"/>이고, value2의 값은 <c:out value="${ value2 }"/>입니다.

    <!-- 필기. test 속성에 조건식을 기술하며, 조건식은 반드시 el 형식으로 기술해야 한다. -->
    <c:if test="${ value1 >= value2 }">
        <h3>value1 이 큽니다. : ${ value1 }</h3>
    </c:if>
    <c:if test="${ value1 < value2 }">
        <h3>value2 가 큽니다 : ${ value2 }</h3>
    </c:if>

    <hr>

    <h2>c:choose : switch 문, c:when : case 문, c:otherwise : default 문</h2>
    <c:set var="no" value="${ param.no }" />

    param.no의 값은 <c:out value="${ param.no }"/> 입니다.
    <c:choose>
        <c:when test="${ no == 1 }"><h3>안녕하세요.</h3></c:when>
        <c:when test="${ no eq 2 }"><h3>반갑습니다.</h3></c:when>
        <c:otherwise><h3>환영합니다.</h3></c:otherwise>
    </c:choose>

    <hr>

    <h2>c:forEach 태그 : for 문</h2>
    <c:forEach begin="1" end="10">
        반복실행<br>
    </c:forEach>
    <br>
    <c:forEach var="size" begin="1" end="7" step="1">
        <font size="${ size }">글자크기 ${ size }</font> <br>
    </c:forEach>

    <br>

    <!-- 필기. varStatus를 통해 상태를 관리할 수 있다.(인덱스 등) -->
    <!-- 필기. current : 현재 반복 횟수, index : 제로기반 인덱스, count : 1 기반 인덱스 -->
    <!-- 필기. first : 현재 라운드가 반복을 통한 첫 번째, last : 현재 라운드가 반복을 통한 마지막 번째 -->
    <h2>c:forEach 태그 : 배열 또는 컬렉션 연속처리에 for~each 문처럼 사용함</h2>
    <c:forEach var="color" items="${ colors }" varStatus="st">
        <font color="${ color }">(${ st.index }) ${ st.count } :  글자색 ${ color }</font>
        <br>
    </c:forEach>
    <br>

    <hr/>

    <h2>c:forTokens 태그 : 문자열을 토큰으로 분리 처리할 때 사용</h2>
    <ul>
        <c:forTokens var="color" items="yellow blue pink red green" delims=" " >
            <li>${color}</li>
        </c:forTokens>
    </ul>
    <br>

    <h3>여러 개의 토큰 문자를 가지고 분리 처리할 수도 있음</h3>
    <!-- 설명. delims 안에 지정된 토큰문자의 순서는 상관 없다. -->
    <c:forTokens var="color" items="yellow-blue*pink/red green" delims="/*- " >
        ${color} <br/>
    </c:forTokens>
    <br>

    <hr/>

    <h2>c:url 태그 : 링크 설정 정보 별도 지정 시 사용하는 태그</h2>
    <c:url var="fmtlink" value="testJstlCoreResult.jsp">
        <c:param name="num" value="77" />
    </c:url>
    <a href="${ fmtlink }">결과 화면 연결</a> <br>

</body>
</html>
