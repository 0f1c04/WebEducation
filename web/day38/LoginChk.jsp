<%@ page import="model.EmpDAO" %>
<%@ page import="model.EmpVO" %><%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 4. 8.
  Time: 오후 2:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="data:;base64,iVBORw0KGgo=">

    <title>Title</title>
    <%
        String userid = request.getParameter("userid");
        int empId = Integer.parseInt(userid);
        EmpDAO dao = new EmpDAO();
        EmpVO emp = dao.selectById(empId);
        String message = "아이디에 해당하는 직원이 존재하지 않음";
        if(emp!=null) {
            message = emp.getFirst_name()+emp.getLast_name()+"환영~";
        }
    %>
</head>
<body>
<p><%=message %></p>
</body>
</html>
