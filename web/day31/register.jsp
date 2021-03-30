<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 3. 30.
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        //post방식일때 body부분에 전달된 parameter를 encoding한다.
        request.setCharacterEncoding("utf-8");
    %>
</head>
<body><h1>사용자가 입력데이터를 서버에서 받는다.</h1>
<!-- EL(Expression Language) 표기법 -->
<p>아이디: ${param.userid}</p>
</body>
</html>
