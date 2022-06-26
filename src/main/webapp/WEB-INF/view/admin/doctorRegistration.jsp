<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/admin/doctorRegistration.css">
    <title>Karta lekarza</title>
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



                <div id="contentTitle">Dodanie nowego lekarza</div>

                <div class="content1">

                    <form action="/admin/addDoctor" method="POST">

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
                                Data urodzenia
                            </div>
                            <div id="docInput3">
                            <input type="text" name = "date_of_birth" placeholder="RR-MM-DD" required>
                            </div>
                        </div>

                        <div id="docCell4">
                            <div id="doctextInput4">
                                Numer telefonu
                            </div>
                            <div id="docInput4">
                            <input type="text" name = "tel" placeholder="Wpisz numer telefonu" required>
                            </div>
                        </div>

                        <div style="clear:both;"></div>

                        <div id="docCell5">
                            <div id="doctextInput5">
                                Miasto
                            </div>
                            <div id="docInput5">
                            <input type="text" name = "city" placeholder="Wpisz miasto" required>
                            </div>
                        </div>

                        <div id="docCell6">
                            <div id="doctextInput6">
                                Ulica
                            </div>
                            <div id="docInput6">
                            <input type="text" name = "street" placeholder="Wpisz ulicę" required>
                            </div>
                        </div>

                        <div style="clear:both;"></div>

                        <div id="docCell7">
                            <div id="doctextInput7">
                                Numer domu
                            </div>
                            <div id="docInput7">
                            <input type="text" name = "house_number" placeholder="Wpisz numer domu" required>
                            </div>
                        </div>

                        <div id="docCell8">
                            <div id="doctextInput8">
                                Numer mieszkania
                            </div>
                            <div id="docInput8">
                            <input type="text" name = "flat_number" placeholder="Wpisz numer mieszkania" required>
                            </div>
                        </div>

                        <div style="clear:both;"></div>

                        <div id="docCell9">
                            <div id="doctextInput9">
                                Numer licencji
                            </div>
                            <div id="docInput9">
                            <input type="text" name = "medical_license_number" placeholder="Wpisz numer licencji" required>
                            </div>
                        </div>

                                <div id="docButton">
                                <input type="submit" value="ZAPISZ">
                                </div>

                    </form>
                </div>



            </div>

        </div>
    </body>
</html>




