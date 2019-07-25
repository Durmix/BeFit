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
    <title>Edycja planu</title>
</head>
<body>

<form:form method="post" modelAttribute="plan" action="${actionUrl}">
    <form:errors path="*"/>
    <form:hidden path="id"/><br>
    <form:hidden path="comments"/><br>
    <form:hidden path="author"/><br>
    <form:hidden path="users"/><br>
    <form:input path="name" placeholder="nazwa"/><br><br>
    <form:textarea path="description" placeholder="opis" /><br><br>
    <form:input path="calories" placeholder="kaloryczność"/><br><br>
    <input type="submit" value="Edytuj"/>
</form:form>
</body>
</html>
