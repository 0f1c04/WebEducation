<%@ page import="model.DeptVO" %>
<%@ page import="model.DeptDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="3;url=menu.html">
    <link rel="icon" href="data:;base64,iVORw0KGgo=">
    <title>부서DB등록</title>
</head>
<body>
<%
    //1. 사용자의 입력값 읽기
    int id = Integer.parseInt(request.getParameter("dept_id"));
    String name = request.getParameter("dept_name");
    int mid = Integer.parseInt(request.getParameter("manager_id"));
    int lid = Integer.parseInt(request.getParameter("location_id"));

    DeptVO dept = new DeptVO(id, name, mid, lid);

    //2. DAO 호출
    DeptDAO dao = new DeptDAO();
    int result = dao.insertDept(dept);
    String message = "입력성공";
    if(result <= 0) {
        message = "입력실패";
    }
%>
<h1>알림: <%=message%></h1>
<hr>
<p>부서아이디: ${param.dept_id}</p>
<p>부서이름: ${param.dept_name}</p>
<p>매니저 ID: ${param.manager_id}</p>
<p>Location ID: ${param.location_id}</p>

</body>
</html>