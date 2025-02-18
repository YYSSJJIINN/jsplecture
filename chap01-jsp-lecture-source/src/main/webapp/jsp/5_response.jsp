<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>주문 결과입니다.</h1>
<%
  /* 앞서 MenuOrderServlet에서 해당 JSP 페이지로 포워딩 시켰는데,
   * 포워딩 시킬 때 자료인자로 전달한 request 객체의 어트리뷰트에 공유할 데이터 3가지를 보냈다.
   * 이를 JSP 내장 객체인 'request'를 통해서 다시 꺼낼쓸 수 있다.
   * */
  String menuName = (String) request.getAttribute("menuName");
  int amount = (int) request.getAttribute("amount");
  int orderPrice = (int) request.getAttribute("orderPrice");
%>
<p>주문음식 : <%= menuName %></p>
<p>주문수량 : <%= amount %></p>
<p>결제금액 : <%= orderPrice %></p>
<%--
    설명. 이렇게 JSP를 이용하면 서블릿에서 페이지를 생성하는 것 보다는 훨씬 수월하다.
        jsp는 view에 적합한 구조로 되어있고 서블릿은 로직 작성에 적합하게 되어 있다.
        그렇기에 MVC Model2 패턴에서는 서블릿을 controller로 jsp를 view로 사용하는 방식으로 구성한다.
        위의 request는 사용하기 이전에 만들어진 레퍼런스 변수가 아니다. 생성하지 않았는데도 사용이 가능하다.
        이런 것들은 jsp 내장 객체이다. translate 된 파일과 pdf 자료를 이용해 내장객체에 대해 알아보자.
--%>
</body>
</html>