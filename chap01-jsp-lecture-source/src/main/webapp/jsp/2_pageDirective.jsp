<!--
    필기.
    지시자 태그에서 사용 가능한 속성들은 여러 가지들이 있지만 수업에서 다룰 속성은 아래 세 가지이다.
    - errorPage : 현재 페이지에서 Exception이 발생하면 속성값에 설정한 jsp 경로로 exception을 던진다.
        // 이 JSP 페이지는 에러를 처리하기 위한 errorPage인가?라고 묻는 것이다.
    - isErrorPage : 현재 페이지가 Exception을 처리할 페이지인 경우 true로 지정한다. 기본값은 false이다.
    - import : java.lang 패키지 이외의 클래스를 현 jsp 파일에서 사용할 때 import 속성으로 정의하면
    java 파일의 import 선언부를 작성하는 것과 같다.

    필기.
    지시자 태그는 page 지시자 태그, include 지시자 태그, taglib 지시자 태그가 있다.
    - page 지시자 태그 : 현 jsp 페이지에 대한 설정을 하는 지시자 태그
    - include 지시자 태그 : 다른 jsp 파일을 포함하기 위해 사용하는 지시자 태그
    - taglib : xml 문법 기반의 라이브러리인 JSTL을 이용하기 위해 선언하는 지시자 태그
-->
<%-- 지시자 태그 뒤에 page가 적혀있기 때문에 아래 지시자 태그는 page 지시자 태그가 된다. --%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         import="java.util.Date"
         errorPage="myErrorPage.jsp"
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        // 풀패키지명을 앞 뒤로 다 적어주면 import 할 필요 없다.
//        java.util.Date date = new java.util.Date();

        // 풀패키지명을 적어주지 않으면, 페이지 지시자 태그에 import 어트리뷰트로 import 패키지 경로를 적어줘야 한다.
        Date date = new Date();
        System.out.println(date);
    %>

    <%-- errorPage 어트리뷰트 --%>
    <%
        /* 강제로 runtime 에러를 발생시킬 코드를 작성해볼 것이다.
        *  Exception 발생 시, 어느 JSP 페이지로 Exception을 던질(throw)것인지를 지시자 태그의 errorPage 어트립트에 지정한다.
        * */
        String str = null;
        char ch = str.charAt(0);    // 강제로 NullPointerException을 유발시킨다.
    %>
</body>
</html>