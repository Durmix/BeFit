<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: A754376
  Date: 2019-07-25
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
    <c:forEach items="${users}" var="user">
        <p>Imię: ${user.firstName}</p>
        <p>Nazwisko: ${user.lastName}</p>
        <p>Rola: ${user.role}</p>
        <a href="/mod/showUser?id=${user.id}">Profil</a>
        <hr/>
    </c:forEach>
</body>
</html>
