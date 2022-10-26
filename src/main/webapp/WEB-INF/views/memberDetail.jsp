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
  <style>
    table, th, tr,td {
      border: 1px solid black;
      border-collapse: collapse;
      padding: 10px;
      text-align: center;

    }
  </style>
</head>
<body>
<table>
  <tr>
    <th>회원번호</th>
    <th>이메일</th>
    <th>비밀번호</th>
    <th>이름</th>
    <th>나이</th>
    <th>전화번호</th>
  </tr>

    <tr>
      <td>${findByEmail.memberId}</td>
      <td>${findByEmail.memberEmail}</td>
      <td>${findByEmail.memberPassword}</td>
      <td>${findByEmail.memberName}</td>
      <td>${findByEmail.memberAge}</td>
      <td>${findByEmail.memberMobile}</td>
    </tr>

</table>
</body>
</html>
