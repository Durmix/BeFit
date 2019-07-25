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
        <a href="/" class="w3-bar-item w3-button"><img src="/images/logo.png" height="30"></a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="/login" class="w3-bar-item w3-button">Logowanie</a>
            <a href="/register" class="w3-bar-item w3-button">Rejestracja</a>
            <a href="/plan/list" class="w3-bar-item w3-button">Oferta</a>
        </div>
    </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
    <div class="w3-display-bottomleft w3-padding-large w3-opacity">
        <h1 class="w3-xxlarge">Be Fit</h1>
    </div>
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

    <!-- About Section -->
    <div class="w3-row w3-padding-64" id="about">
        <div class="w3-col m6 w3-padding-large w3-hide-small">
            <img src="/images/catering-dietetyczny.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
        </div>

        <div class="w3-col m6 w3-padding-large">
            <h1 class="w3-center">O nas</h1><br>
            <h5 class="w3-center">Karmimy Was od 2019</h5>
            <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur
                adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.We only use seasonal ingredients.</p>
            <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim
                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

    <hr>

    <!-- Menu Section -->
    <div class="w3-row w3-padding-64" id="menu">
        <div class="w3-col l6 w3-padding-large">

            <h1 class="w3-center">OFERUJEMY:</h1><br>

            <h4>Najwyższą jakość jedzenia</h4>
            <p class="w3-text-grey">Wszystkie potrawy są przygotowywane z najwyższej jakości składników dlatego zawsze są świeże, pełne wartości odżywczych i przy tym przepyszne</p><br>

            <h4>Dostawę gotowych posiłków do domu</h4>
            <p class="w3-text-grey">Nasz kurier dostarczy jedzenie wprost pod drzwi</p><br>

            <h4>Konsultację z dietetykiem</h4>
            <p class="w3-text-grey">W skład naszej kadry wchodzą specjaliści w sprawach żywienia, którzy pomogą Ci wybrać odpowiedni plan żywieniowy</p><br>

            <h4>Konkurencyjne ceny</h4>
            <p class="w3-text-grey">Nasza oferta jest jedną z najlepszych na rynku, co potwierdza wielu zadowolonych klientów</p><br>

        </div>

        <div class="w3-col l6 w3-padding-large">
            <img src="/images/catering-dietetyczny2.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
        </div>
    </div>

    <!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
    <p>Be Fit</p>
</footer>

</body>
</html>
