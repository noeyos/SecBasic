<%--
  Created by IntelliJ IDEA.
  User: soyeonlee
  Date: 2023/08/29
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <title>soyeon</title>
</head>
<body>
    <h1>soyeon page</h1>
    <form action="/logout" method="post">
        <sec:csrfInput/>
        <button>LOGOUT</button>
    </form>
    <input type="text" id="myName" value="soyeon"><br>
    <button onclick="fAjax()">AJAX</button>
<script>
    // csrf 토큰을 get방식에는 안 보내도 됨! (나머진 보내야 함)

    //서버에서 발행된 헤더네임과 토큰갑사 저장
    var header = '${_csrf.headerName}';
    var token =  '${_csrf.token}';
    var mName = document.querySelector("#myName");

    function fAjax() {
        console.log(mName.value);

        let xhr = new XMLHttpRequest();
        xhr.open("post", "/angma/lee", true);
        //바닐라 자바스크립트 사용시 AJAX send 전에 헤더값 세팅 필요
        xhr.setRequestHeader(header, token);
        xhr.onreadystatechange = function () {
            if(xhr.readyState == 4 && xhr.status == 200) {
                console.log(xhr.responseText);
            }
        }
        xhr.send(mName.value);
    }
</script>
</body>
</html>
