<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList.jsp</title>
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
  </tr>

  <c:forEach items="${findAll}" var="member">
    <tr>
      <td>${member.memberId}</td>
      <td><a href="/member?memberEmail=${member.memberEmail}">${member.memberEmail}</a></td>

    </tr>
  </c:forEach>
</table>
</body>
</html>
