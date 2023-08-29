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
</body>
</html>
