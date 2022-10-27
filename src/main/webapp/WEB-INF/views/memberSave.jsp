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
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <style>
        #save-form{
            width: 600px;
        }
    </style>
</head>
<body>
<div class = "container" id="save-form">
<form action="/save" method="post" name="saveForm">
<input type="text" name="memberEmail" placeholder="이메일" class="form-control">
    <span id="email-input-check"></span>
<input type="text" name="memberPassword" pattern="[a-zA-Z1-9]{6,12}" placeholder="비밀번호" class="form-control">
<input type="text" name="memberName" placeholder="이름" class="form-control">
<input type="text" name="memberAge" placeholder="나이" class="form-control">
<input type="text" name="memberMobile" placeholder="전화번호" class="form-control">
    <input type="button" value="회원가입" onclick="save()" class="btn btn-primary">
<%--    submit 역할을 하는 button--%>
<%--    <button onclick="btn1Fn()">버튼가입</button>--%>

</form>
</div>
</body>
<script>
    const save = () => {
        console.log("save 함수호출")

        if (document.saveForm.memberEmail.value == "") {
            // alert("이메일을 입력해주세요");
            // 이메일을 입력하지 않았을 때 span에 빨간색으로 출력
            const emailCheck = document.getElementById("email-input-check");
            emailCheck.innerHTML="이메일을 입력해주세요";
            emailCheck.style.color = "red";
            return false;
        } else if(document.saveForm.memberPassword.value == ""){
            alert("비밀번호를 입력해주세요");
            return false;
        } else if(document.saveForm.memberName.value == ""){
            alert("이름을 입력해주세요");
            return false;
        } else if(document.saveForm.memberAge.value == ""){
            alert("나이를 입력해주세요");
            return false;
        } else if(document.saveForm.memberMobile.value == ""){
            alert("핸드폰번호를 입력해주세요");
            return false;
        }
        document.saveForm.submit();
        //현재 문서 form태그의 name을 제출하겠다.
    }

</script>
</html>
