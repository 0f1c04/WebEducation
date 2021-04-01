<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 3. 30.
  Time: 오후 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%!
    String id = "admin";
    String pw = "1234";
%>
<html>
<head>
    <title>Login Check Page</title>
    <style>
        *{
            margin: 0px;
            padding: 30px;
        }

    h1 {
        position:absolute;
        width:500px;
        height:240px;
        top:50%;
        left:50%;
        transform: translate(-50%, -150%);
        border-radius: 15px;
        padding: 30px 20px;
        background-color:#FFFFFF;
        text-align:center;
    }
    </style>
</head>
<body>
<%
    String id = request.getParameter("user_id");
    String pw = request.getParameter("user_pw");


    if(id.equals("admin")&&pw.equals("1234")){
        request.setAttribute("user_id", id);

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("admin.jsp");
        dispatcher.forward(request, response);

    }else{
        request.setAttribute("msg", "로그인 정보가 틀림");
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("loginFail.jsp");
        dispatcher.forward(request, response);
    }
%>
</body>
</html>

