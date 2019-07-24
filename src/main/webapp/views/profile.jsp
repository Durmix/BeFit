<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<div class="m-4 p-3 width-medium text-color-darker">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="mt-4 ml-4 mr-4">
            <br><br><br>
            <div class="row border-bottom border-3">
                <div class="col"><h3 class="text-uppercase">${user.login}</h3></div>
            </div>

            <table border="1">
                <tr align="center">
                    <td>Imię</td> <td>${user.firstName}</td>
                </tr>
                <tr align="center">
                    <td>Nazwisko</td> <td>${user.lastName}</td>
                </tr>
                <tr align="center">
                    <td>Email</td> <td>${user.email}</td>
                </tr>
                <tr align="center">
                    <td>Adres</td> <td>${user.address}</td>
                </tr>
                <tr align="center">
                    <td><a href="/user/changeEmail/${user.id}">Zmień email</a></td>
                    <td><a href="/user/changeAddress/${user.id}">Zmień adres</a></td>
                    <td><a href="/user/changePassword/${user.id}">Zmień hasło</a></td>
                </tr>
            </table>

        </div>
    </div>
</div>

</body>
</html>
