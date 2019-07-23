<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<title>Be FIT</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <a href="#home" class="w3-bar-item w3-button"><img src="/images/logo.png" height="30"></a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="#about" class="w3-bar-item w3-button">About</a>
            <a href="#menu" class="w3-bar-item w3-button">Menu</a>
            <a href="#contact" class="w3-bar-item w3-button">Contact</a>
        </div>
    </div>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

    <section class="dashboard-section">
        <div class="container pt-4 pb-4">
            <div class="border-dashed view-height">
                <div class="container w-25">
                    <form class="padding-small text-center" action="/login" method="POST">
                        <h1 class="text-color-darker">Logowanie</h1>
                        <div class="form-group">
                            <input type="text" class="form-control" id="email" name="email" placeholder="podaj adres email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="password" name="password" placeholder="podaj hasło">
                        </div>
                        <button class="btn btn-color rounded-0" type="submit">Zaloguj</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
    <h5>Be FIT</h5>
</footer>

</body>
</html>
