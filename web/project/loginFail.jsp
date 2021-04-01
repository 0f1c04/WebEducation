<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 4. 1.
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 실패</title>
    <style>
        h1 {
            position:absolute;
            width:600px;
            top:50%;
            left:50%;
            transform: translate(-50%, -150%);
            border-radius: 15px;
            padding: 30px 20px;
            background-color: #93acb6;
            text-align:center;
        }
    </style>
</head>
<body>
<h1>${param.user_id} 계정은 관리자 계정이 아닙니다.</h1>
</body>
</html>
