<%--
  Created by IntelliJ IDEA.
  User: f1c04
  Date: 21. 4. 1.
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>CSS 레이아웃 - 2단 레이아웃</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div id="container">
    <header id="header">
        <h1>관리자 페이지</h1>
    </header>
    <aside id="sidebar">
        <h2>Menu</h2>
        <ul class="side_ul">
            <li class="side_li"><a href="#">목록</a></li>
            <li class="side_li"><a href="#">추가</a></li>
            <li class="side_li"><a href="#">수정</a></li>
            <li class="side_li"><a href="#">삭제</a></li>
        </ul>
    </aside>
    <section id="contents">
        <h2>내용</h2>

    </section>
    <footer id="footer">
        <h2>푸터</h2>
        <footer>
</div>
</body>
</html>

