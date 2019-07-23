<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: A754376
  Date: 2019-07-16
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja</title>
</head>
<body>

<form:form method="post" modelAttribute="user" action="${actionUrl}">
    <form:errors path="*"/>
    <form:hidden path="id"/><br>
    <form:input path="login" placeholder="login"/><br><br>
    <form:password path="password" placeholder="hasło" /><br><br>
    <input type="submit"/>
</form:form>

</body>
</html>
