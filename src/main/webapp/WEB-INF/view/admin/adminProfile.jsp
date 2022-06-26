<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>



<c:set var="contextPath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/admin/adminProfile.css">
    <title>Profil admina</title>
  </head>

    <body>
        <div id="container">

            <div id="navigation">

                <div id=navigation1>

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
                                ttttt : <security:authentication property="principal.username" />

                            </div>
                            <div id="docLogInput1">
                            <form action="/logout" method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <input type="submit" value="Wyloguj"/>
                            </form>
                            </div>
                        </div>

            </div>

            <div id="content">
                <img id="picture10" src="/helpURL/images/Logo1.png" alt="List"/><br/>
            MEDICAAP v1.0.0
            </div>

        </div>
    </body>
</html>




