<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<title>Be FIT</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/style2.css">
<style>
    body {font-family: "Times New Roman", Georgia, Serif;}
    h1, h2, h3, h4, h5, h6 {
        font-family: "Playfair Display";
        letter-spacing: 5px;
    }
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
        <a href="/mainPage" class="w3-bar-item w3-button"><img src="/images/logo.png" height="30"></a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="/account/${user.id}" class="w3-bar-item w3-button">Twoje konto</a>
            <a href="/order" class="w3-bar-item w3-button">Zamów</a>
            <a href="/logout" class="w3-bar-item w3-button">Wyloguj</a>
        </div>
    </div>
</div>

    <br><br><br>
    <form:form method="post" modelAttribute="user">
        <from:hidden path="id" value="${user.id}"/>
        <from:hidden path="login" value="${user.login}"/>
        <from:hidden path="firstName" value="${user.firstName}"/>
        <from:hidden path="lastName" value="${user.lastName}"/>
        <from:hidden path="password" value="${user.password}"/>
        <from:hidden path="email" value="${user.email}"/>
        <from:hidden path="role" value="${user.role}"/>
        <form:input path="address"/>
        <input type="submit" value="Zmień adres"/>
    </form:form>

</body>
</html>
