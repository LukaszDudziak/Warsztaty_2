<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="card">
        <h3 class="header" align="center">GastroGrafik</h3>

        <c:forEach var="pub" items="${pubs}">

            <div class="container">
                <a href="/pub/edit/${pub.id}">Edytuj informacje</a> |
                <a href="/open/day/${pub.id}">Ustaw otwarcie</a> |
                <a href="/schedule/create/${pub.id}">Ustaw grafik</a> |
                <a href="/schedule/list">Wyświetl utworzone grafiki</a> |
                <a href="/employees/list">Zarządzaj pracownikami</a> |
                <div align="center"><a href="/kolorki.jsp">KOLORKI</a></div>
            </div>
            <div align="center">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Informacje:</h5>
                        Nazwa: ${pub.name}<br>
                        Adres: ${pub.address}<br>
                        Email: ${pub.email}<br>
                        Telefon: ${pub.phoneNumber}<br>
                        NIP: ${pub.nip}
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
