<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: A754376
  Date: 2019-07-16
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Logowanie</title>
</head>
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
        <a href="/" class="w3-bar-item w3-button"><img src="/images/logo.png" height="30"></a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="/login" class="w3-bar-item w3-button">Logowanie</a>
            <a href="/register" class="w3-bar-item w3-button">Rejestracja</a>
            <a href="/home/#menu" class="w3-bar-item w3-button">Oferta</a>
        </div>
    </div>
</div>
<h1 class="text-color-darker">Rejestracja</h1>
<form:form method="post" modelAttribute="user">
    <form:input path="login" placeholder="login"/><br>
    <form:errors path="login" element="dif"/><br>
    <form:input path="firstName" placeholder="imię"/><br>
    <form:errors path="firstName" element="dif"/><br>
    <form:input path="lastName" placeholder="nazwisko"/><br>
    <form:errors path="lastName" element="dif"/><br>
    <form:password path="password" placeholder="hasło" /><br>
    <form:errors path="password" element="dif"/><br>
    <form:input path="email" placeholder="email" /><br>
    <form:errors path="email" element="dif"/><br>
    <input type="submit" value="Zarejestruj"/><br>
    <a href="/login">Logowanie</a>
</form:form>

</body>
</html>
