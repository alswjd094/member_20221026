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
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<div class="container">
<table class="table table-striped table-hover">
  <tr>
    <th>회원번호</th>
    <th>이메일</th>
    <th>조회</th>
  </tr>

  <c:forEach items="${findAll}" var="member">
    <tr>
      <td>${member.memberId}</td>
      <td><a href="/member?memberId=${member.memberId}">${member.memberEmail}</a></td>
      <td>
        <a href="/member?memberId=${member.memberId}">조회</a>
      </td>
    </tr>
  </c:forEach>
</table>
</div>
</body>
</html>
