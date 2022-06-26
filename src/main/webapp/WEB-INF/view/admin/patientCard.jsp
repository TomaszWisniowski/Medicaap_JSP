<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/admin/patientCard.css">
    <title>Karta pacjenta</title>
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

                <form action="/admin/addPatientCard" method="POST">

                <div id="contentTitle">Karta pacjenta

                <div id="patCell1">

                          <div id="patInput1">
                          <input type="text" name = "patient_id" placeholder="Wpisz id pacjenta" required>
                          </div>

                </div>

                </div>

                    <div class="content1">
                            <div id="cardCell1">
                                <div id="cardtextInput1">
                                WYWIAD
                                </div>
                                <div id="cardInput1">
                                <textarea style="resize: none;" class="textArea1" name="interview" rows="5" cols="33"></textarea>
                                </div>
                            </div>
                    </div>

                    <div class="content2">
                            <div id="cardCell2">
                                <div id="cardtextInput2">
                                BADANIE FIZYKALNE
                                </div>
                                <div id="cardInput2">
                                <textarea style="resize: none;" class="textArea1" name="physical_examination" rows="5" cols="33"></textarea>
                                </div>
                            </div>
                    </div>

                    <div style="clear:both;"></div>

                    <div class="content3">
                            <div id="cardCell3">
                                <div id="cardtextInput3">
                                ROZPOZNANIE
                                </div>
                                <div id="cardInput3">
                                <textarea style="resize: none;" class="textArea1" name="diagnosis" rows="5" cols="33"></textarea>
                                </div>
                            </div>
                    </div>

                    <div class="content4">
                            <div id="cardCell4">
                                <div id="cardtextInput4">
                                HISTORIA WIZYT
                                </div>
                                <div id="cardInput4">
                                <textarea style="resize: none;" class="textArea1" name="visit_history" rows="5" cols="33"></textarea>
                                </div>
                            </div>
                    </div>

                    <div style="clear:both;"></div>

                    <div id="cardButton">
                    <input type="submit" value="ZAPISZ">
                    </div>

                </form>


            </div>

        </div>
    </body>
</html>







