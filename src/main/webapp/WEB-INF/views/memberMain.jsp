<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberMain.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<div class="container">
    <h2>${sessionScope.loginEmail}님 환영합니다.</h2>
    <h2>model값: ${modelEmail}</h2>
    <a href="/">index.jsp</a>
    <button class="btn btn-warning" onclick="updateForm()">정보 수정하기</button>
<%--    <a href="/update">정보 수정하기</a>--%>
    <button class="btn btn-danger" onclick="logout()">로그아웃</button>
</div>
</body>
<script>
    const updateForm = () => {
        location.href ="/update";
    }

    const logout = () => {
        location.href="/logout";
    }
</script>
</html>
