<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">

</head>
<body>
<div class="container">
  <table class="table table-striped table-hover">
  <tr>
    <th>회원번호</th>
    <th>이메일</th>
    <th>비밀번호</th>
    <th>이름</th>
    <th>나이</th>
    <th>전화번호</th>
  </tr>

    <tr>
      <td>${findById.memberId}</td>
      <td>${findById.memberEmail}</td>
      <td>${findById.memberPassword}</td>
      <td>${findById.memberName}</td>
      <td>${findById.memberAge}</td>
      <td>${findById.memberMobile}</td>
    </tr>

</table>
</div>
</body>
</html>
