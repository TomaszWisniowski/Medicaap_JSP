<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/admin/registrationCard.css">
    <title>Karta rejestracji</title>
  </head>

    <body>
        <div class="container">

            <div class="navigation">

                <div class=navigation1>

                    <a href="${pageContext.request.contextPath}/admin/doctorRegistration">
                    <div id="button1">
                    <img id="picture1" src="/helpURL/images/Add.png" alt="Add"/>
                    NOWY LEKARZ
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/doctorsList">
                    <div id="button2">
                    <img id="picture2" src="/helpURL/images/List.png" alt="List"/>
                    LISTA LEKARZY
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/nurseRegistration">
                    <div id="button3">
                    <img id="picture3" src="/helpURL/images/Add.png" alt="Add"/>
                    NOWA PIELĘGNIARKA
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/nursesList">
                    <div id="button4">
                    <img id="picture4" src="/helpURL/images/List.png" alt="List"/>
                    LISTA PIELĘGNIAREK
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/patientRegistration">
                    <div id="button5">
                    <img id="picture5" src="/helpURL/images/Add.png" alt="Add"/>
                    NOWY PACJENT
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/patientsList">
                    <div id="button6">
                    <img id="picture6" src="/helpURL/images/Add.png" alt="List"/>
                    LISTA PACJENTÓW
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/patientCard">
                    <div id="button7">
                    <img id="picture7" src="/helpURL/images/Reg.png" alt="Registration"/>
                    KARTA PACJENTA
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/registrationCard">
                    <div id="button8">
                    <img id="picture8" src="/helpURL/images/Reg.png" alt="Registration"/>
                    KARTA REJESTRACJI
                    </div>
                    </a>

                    <a href="${pageContext.request.contextPath}/admin/registrationList">
                    <div id="button9">
                    <img id="picture9" src="/helpURL/images/List.png" alt="List"/>
                    LISTA REJESTRACJI
                    </div>
                    </a>

                </div>

                        <div id="login1">
                            <div id="logTextInput1">
                                <br>Zalogowany :     <br/>
                                ROLE_ADMIN
                            </div>
                            <div id="docLogInput1">
                            <form action="/logout" method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <input type="submit" value="Wyloguj"/>
                            </form>
                            </div>
                        </div>

            </div>

            <div class="content">



                <div id="contentTitle">Karta rejestracji pacjenta</div>

                <div class="content1">

                    <form action="/addRegistrationCard" method="POST">

                        <div id="docCell1">
                            <div id="doctextInput1">
                                Imię
                            </div>
                            <div id="docInput1">
                            <input type="text" name = "first_name" placeholder="Wpisz imię" required>
                            </div>
                        </div>

                        <div id="docCell2">
                            <div id="doctextInput2">
                                Nazwisko
                            </div>
                            <div id="docInput2">
                            <input type="text" name = "last_name" placeholder="Wpisz nazwisko" required>
                            </div>
                        </div>

                        <div style="clear:both;"></div>

                        <div id="docCell3">
                            <div id="doctextInput3">
                                Data wizyty
                            </div>
                            <div id="docInput3">
                            <input type="text" name = "date_of_visit" placeholder="DD-MM-RR" required>
                            </div>
                        </div>

                        <div id="docCell4">
                            <div id="doctextInput4">
                                Data rejestracji
                            </div>
                            <div id="docInput4">
                            <input type="text" name = "date_of_registration" placeholder="DD-MM-RR" required>
                            </div>
                        </div>

                        <div style="clear:both;"></div>


                                <div id="docButton">
                                <input type="submit" value="ZAPISZ">
                                </div>

                    </form>
                </div>



            </div>

        </div>
    </body>
</html>







