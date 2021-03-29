<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 3. 29.
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jsp = java + html</h1>
<%
    //자바의 주석
    String name = "이건 테스트입니다. 바로 반영됩니다. 배고파요";
%>
<h2>작성자: <%=name%></h2>
</body>
</html>
