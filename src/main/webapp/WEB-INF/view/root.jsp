<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE HTML>
<html lang="pl">
  <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="/helpURL/CSS/root.css">
    <title>Karta lekarza</title>
  </head>

    <body>
        <div id="container">

            <div id="content">
                <img id="picture11" src="/helpURL/images/Logo1.png" alt="List"/><br/>
            MEDICAAP v1.0.0

                <div class="content1">

                    <form action="http://localhost:8080" method="post">

                                <div id="docButton">
                                <input type="submit" value="Zaloguj się">
                                </div>

                    </form>
                </div>

            </div>

        </div>
    </body>
</html>




