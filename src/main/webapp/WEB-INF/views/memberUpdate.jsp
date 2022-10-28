<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <style>
        #update-form {
            width: 800px;
        }
    </style>
</head>
<body>
<div class="container" id="update-form">
<form action="/update" method="post" name="updateForm">
    <input type="text" name="memberId" value="${member.memberId}" class="form-control" readonly>
    <input type="text" name ="memberEmail" value = "${member.memberEmail}" class="form-control" readonly>
    <input type="text" name="memberPassword" id="memberPassword" class="form-control">
    <input type="text" name="memberName" value="${member.memberName}" class="form-control">
    <input type="text" name="memberAge" value="${member.memberAge}" class="form-control">
    <input type="text" name="memberMobile" value="${member.memberMobile}" class="form-control">
    <input type="button" value="수정" class="btn btn-warning" onclick="update()">

</form>
</div>
</body>
<script>
    const update = () => {
        //db에서 가져온 비밀번호
        const passwordDB = '${member.memberPassword}';
        //사용자가 input태그에 입력한 비밀번호와 db에서 가져온 비밀번호가 일치하면 수정요청 보내고
        // 일치하지 않으면 alert으로 비밀번호가 일치하지 않습니다 출력
        const password = document.getElementById("memberPassword").value;
        if(password == passwordDB){
            document.updateForm.submit();

        } else {
            alert("비밀번호가 일치하지 않습니다.");

        }

    }
</script>
</html>
