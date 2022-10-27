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
    <th>삭제</th>
  </tr>

  <c:forEach items="${findAll}" var="member">
    <tr>
      <td>${member.memberId}</td>
      <td><a href="/member?memberId=${member.memberId}">${member.memberEmail}</a></td>
      <td>
        <a href="/member?memberId=${member.memberId}">조회</a>
      </td>
      <td>
        <button class="btn btn-danger" onclick="deleteMember('${member.memberId}')">삭제</button>
          <%-- 버튼으로 함수호출하고 자바스크립트로 넘겨줄 수 있음--%>
      </td>
    </tr>
  </c:forEach>
</table>
</div>
</body>
  <script>
    const deleteMember = (clickedId) => {
      console.log('${findAll}');
      console.log("클릭한 id값: ", clickedId);
      location.href="/delete?memberId="+clickedId;
    }
  </script>
</html>
