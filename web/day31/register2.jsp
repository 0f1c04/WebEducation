<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 3. 30.
  Time: 오전 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="data:;base64,iVORw0KGgo=">
    <title>Title</title>
</head>
<body>
<h1>당신의 나이는 ${param.age + 1}</h1>

<%
    String age = request.getParameter("age");
    int iAge = Integer.parseInt(age) + 2;
%>
<h1>당신의 나이는 <%=iAge%></h1>
</body>
</html>
