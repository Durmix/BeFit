<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: A754376
  Date: 2019-07-25
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Podstawowe informacje</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" aria-controls="connectedServices" aria-selected="false">
            <c:if test="${user.role == 'USER'}">
                Zakupione plany
            </c:if>
            <c:if test="${user.role == 'MOD'}">
                Stworzone plany
            </c:if>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="config-tab" data-toggle="tab" href="#config" role="tab" aria-controls="config" aria-selected="false">Edycja konta</a>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Imię i nazwisko</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.firstName} ${user.lastName}
            </div>
        </div>
        <hr />

        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Email</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.email}
            </div>
        </div>
        <hr />


        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Adres</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.address}
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Uprawnienia</label>
            </div>
            <div class="col-md-8 col-6">
                ${logged.role}
            </div>
        </div>
        <hr />
    </div>
    <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="connectedServices-tab">
        <c:if test="${user.role == 'USER'}">
            <c:forEach items="${user.usedPlans}" var="plan">
                <div class="row">
                    <div class="col-sm-3 col-md-2 col-5">
                        <label style="font-weight:bold;">${plan.name}</label>
                    </div>
                    <div class="col-md-8 col-6">
                            ${plan.description}
                    </div>
                </div>
                <hr />
            </c:forEach>
        </c:if>
        <c:if test="${user.role == 'MOD'}">
            <%--<c:forEach items="${user.createdPlans}" var="plan">
                <div class="row">
                    <div class="col-sm-3 col-md-2 col-5">
                        <label style="font-weight:bold;">${plan.name}</label>
                    </div>
                    <div class="col-md-8 col-6">
                            ${plan.description}
                    </div>
                </div>
                <hr />
            </c:forEach>--%>
        </c:if>
    </div>
    <div class="tab-pane fade" id="config" role="tabpanel" aria-labelledby="config-tab">
        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Zmień email</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.firstName} ${user.lastName}
            </div>
        </div>
        <hr />

        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Zmień adres</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.email}
            </div>
        </div>
        <hr />


        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Zmień hasło</label>
            </div>
            <div class="col-md-8 col-6">
                ${user.address}
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-sm-3 col-md-2 col-5">
                <label style="font-weight:bold;">Uprawnienia</label>
            </div>
            <div class="col-md-8 col-6">
                ${logged.role}
            </div>
        </div>
        <hr />
    </div>
</div>
</body>
</html>

