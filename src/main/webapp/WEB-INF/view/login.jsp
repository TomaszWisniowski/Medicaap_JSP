<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="/helpURL/CSS/login.css">
    <title>Karta lekarza</title>

  </head>

    <body>
        <div id="container">

            <div id="content">
                <img id="picture11" src="/helpURL/images/Logo1.png" alt="Logo"/><br/>
            MEDICAAP v1.0.0

                <div class="content1">

                    <form action="/login" method="POST">

                        <div id="docCell1">
                            <div id="doctextInput1">
                                Login
                            </div>
                            <div id="docInput1">
                            <input type="text" name = "username" placeholder="Wpisz login" required>
                            </div>
                        </div>

                        <div id="docCell2">
                            <div id="doctextInput2">
                                Hasło
                            </div>
                            <div id="docInput2">
                            <input type="password" name = "password" placeholder="Wpisz hasło" required>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </div>
                        </div>

                                <div id="docButton">
                                <input type="submit" value="Zaloguj się">
                                </div>

                    </form>
                </div>

            </div>

        </div>
    </body>
</html>





