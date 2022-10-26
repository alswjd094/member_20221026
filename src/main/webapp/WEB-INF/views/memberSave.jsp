<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberSave.jsp</title>
</head>
<body>
<form action="/save" method="post">
<input type="text" name="memberEmail" placeholder="이메일"> <br>
<input type="text" name="memberPassword" pattern="[a-zA-Z1-9]{6,12}" placeholder="비밀번호"> <br>
<input type="text" name="memberName" placeholder="이름"> <br>
<input type="text" name="memberAge" placeholder="나이"> <br>
<input type="text" name="memberMobile" placeholder="전화번호"> <br>
<input type="submit" value="저장">
</form>
</body>
</html>
