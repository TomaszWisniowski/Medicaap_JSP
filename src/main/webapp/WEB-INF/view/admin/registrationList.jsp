<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/admin/registrationList.css">
    <title>Lista rejestracji</title>
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



                <div id="contentTitle">Lista rejestracji</div>

                <div class="content1">

                    <table>

                        <tr class="dark">

                            <th class="text">Id</th>
                            <th class="text">Imię</th>
                            <th class="text">Nazwisko</th>
                            <th class="text">Data wizyty</th>
                            <th class="text">Data rejestracji</th>
                            <th class="text">Id pacjenta</th>
                            <th class="text">Id karty</th>
                            <th class="text"></th>


                        </tr>

                        <tr>
                            <td class="text">1</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">1</td>
                            <td class="text">1</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">2</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">1</td>
                            <td class="text">1</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">3</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">2</td>
                            <td class="text">2</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">4</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">3</td>
                            <td class="text">3</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">5</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">4</td>
                            <td class="text">4</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">6</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">5</td>
                            <td class="text">5</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">7</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">6</td>
                            <td class="text">6</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">8</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">7</td>
                            <td class="text">7</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">9</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">8</td>
                            <td class="text">8</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">10</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">9</td>
                            <td class="text">9</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">11</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">10</td>
                            <td class="text">10</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">12</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">11</td>
                            <td class="text">11</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">13</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">12</td>
                            <td class="text">12</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">14</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">13</td>
                            <td class="text">13</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">15</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">14</td>
                            <td class="text">14</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">16</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">15</td>
                            <td class="text">15</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">17</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">16</td>
                            <td class="text">16</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">18</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">17</td>
                            <td class="text">17</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">19</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">18</td>
                            <td class="text">18</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">20</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">19</td>
                            <td class="text">19</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">21</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">20</td>
                            <td class="text">20</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">22</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">21</td>
                            <td class="text">21</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">23</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">22</td>
                            <td class="text">22</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">24</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">23</td>
                            <td class="text">23</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                                                <tr>
                            <td class="text">25</td>
                            <td class="text">Margery</td>
                            <td class="text">Newton</td>
                            <td class="text">10-03-2022</td>
                            <td class="text">05-03-2022</td>
                            <td class="text">24</td>
                            <td class="text">24</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>


                        </tr>


                        <tr class="dark">
                            <td class="text">26</td>
                            <td class="text">Lisa</td>
                            <td class="text">Cambell</td>
                            <td class="text">11-03-2022</td>
                            <td class="text">06-03-2022</td>
                            <td class="text">25</td>
                            <td class="text">25</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td class="text">27</td>
                            <td class="text">Clark</td>
                            <td class="text">Lee</td>
                            <td class="text">12-03-2022</td>
                            <td class="text">07-03-2022</td>
                            <td class="text">26</td>
                            <td class="text">26</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>

                        <tr class="dark">
                            <td class="text">28</td>
                            <td class="text">Louis</td>
                            <td class="text">Chaner</td>
                            <td class="text">13-03-2022</td>
                            <td class="text">08-03-2022</td>
                            <td class="text">27</td>
                            <td class="text">27</td>
                            <td class="text">
                                <a href="../index.html">
                                <div class="edit">
                                Edytuj
                                </div>
                                </a>
                            </td>
                        </tr>




                    </table>

                </div>



            </div>

        </div>
    </body>
</html>







