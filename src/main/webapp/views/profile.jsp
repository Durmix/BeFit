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

<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="/css/style3.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="/js/scrypt1.js"></script>
    <link rel="stylesheet" href="https://bootswatch.com/4/simplex/bootstrap.min.css"/>
    <script>
        $(document).ready(function(){
            $('#deleteModal').on('show.bs.modal', function (event) {
                let userId = $(event.relatedTarget).data('user-id');
                let userLogin = $(event.relatedTarget).data('user-login');
                $(this).find('.modal-body p #userLogin').text(userLogin);
                $('#deleteId').on('click', function () {
                    window.location.href = "/user/delete/" + userId;
                })
            });
        });
    </script>

</head>
<body>

<div class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
        <a href="/mainPage" class="w3-bar-item w3-button"><img src="/images/logo.png" height="30"></a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="/user/account/${user.id}" class="w3-bar-item w3-button">Twoje konto</a>
            <c:if test="${user.role == 'USER'}">
                <a href="/plan/order" class="w3-bar-item w3-button">Zamów</a>
            </c:if>
            <c:if test="${user.role == 'MOD'}">
                <a href="/plan/create" class="w3-bar-item w3-button">Stwórz plan</a>
            </c:if>

            <a href="/logout" class="w3-bar-item w3-button">Wyloguj</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title mb-4">
                        <div class="d-flex justify-content-start">
                            <div class="image-container">
                                <img src="http://placehold.it/150x150" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />
                                <div class="middle">
                                    <input type="button" class="btn btn-secondary" id="btnChangePicture" value="Change" />
                                    <input type="file" style="display: none;" id="profilePicture" name="file" />
                                </div>
                            </div>
                            <div class="userData ml-3">
                                <h2 class="d-block" style="font-size: 6rem; font-weight: bold">${user.login}</h2>
                            </div>
                            <div class="ml-auto">
                                <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
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
                            <div class="tab-content ml-1" id="myTabContent">
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

                                <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
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
                                        <c:forEach items="${user.createdPlans}" var="plan">
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
                                </div>

                                <div class="tab-pane fade" id="config" role="tabpanel" aria-labelledby="config-tab">

                                    <div class="row">
                                        <div class="col-sm-3 col-md-2 col-5">
                                            <label style="font-weight:bold;">Zmień email</label>
                                        </div>
                                        <div class="col-md-8 col-6">
                                            <a href="/user/changeEmail/${user.id}">KLIK</a>
                                        </div>
                                    </div>
                                    <hr />

                                    <div class="row">
                                        <div class="col-sm-3 col-md-2 col-5">
                                            <label style="font-weight:bold;">Zmień hasło</label>
                                        </div>
                                        <div class="col-md-8 col-6">
                                            <a href="/user/changePassword/${user.id}">KLIK</a>
                                        </div>
                                    </div>
                                    <hr />


                                    <div class="row">
                                        <div class="col-sm-3 col-md-2 col-5">
                                            <label style="font-weight:bold;">Zmień adres</label>
                                        </div>
                                        <div class="col-md-8 col-6">
                                            <a href="/user/changeAddress/${user.id}">KLIK</a>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <div class="col-sm-3 col-md-2 col-5">
                                            <label style="font-weight:bold;">Usuń konto</label>
                                        </div>
                                        <div class="col-md-8 col-6">
                                            <a href="#" class="btn btn-danger"
                                               data-toggle="modal"
                                               data-target="#deleteModal"
                                               data-user-id="${logged.id}"
                                               data-user-login="${logged.login}"
                                               title="Delete user">KLIK</a>
                                        </div>
                                    </div>
                                    <hr />
                                </div>

                            </div>
                        </div>
                    </div>

                    <a href="#" class="btn btn-danger"
                       data-toggle="modal"
                       data-target="#deleteModal"
                       data-user-id="${logged.id}"
                       data-user-login="${logged.login}"
                       title="Delete user">KLIK</a>

                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">

                                <div class="modal-header">
                                    <h5 class="modal-title">Potwierdzenie usunięcia</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <p>Czy na pewno chcesz usunąć konto <strong><span id="userLogin"></span></strong>?</p>
                                </div>

                                <div class="modal-footer">
                                    <button id="deleteId" type="button" class="btn btn-primary">Tak</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Nie</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
