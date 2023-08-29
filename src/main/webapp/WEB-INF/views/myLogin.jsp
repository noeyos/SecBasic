<%--
  Created by IntelliJ IDEA.
  User: soyeonlee
  Date: 2023/08/29
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <title>myLogin</title>
</head>
    <h1>myLogin page</h1>
    <form action="/login" method="post"> <!-- get방식이 아니라 post 방식이기 때문에 토큰을 보내야 함 -->
        ID <input type="text" name="username" value=""><br>
        PW <input type="password" name="password" value=""><br>
        <sec:csrfInput/>
        <input type="submit" value="Login">
    </form>
    <hr>
    <h1>logout</h1>
    <form action="/logout" method="post">
        <sec:csrfInput/>
        <input type="submit" value="Logout">
    </form>
<body>

</body>
</html>
