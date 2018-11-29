<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<form:form method="post" modelAttribute="pubOpen">
    <div class="container">
        <div class="card">
            <h3 class="header" align="center">Ustal dni robocze</h3>
            <div class="form-group">
                <label for="monId"> Poniedziałek</label>
                <form:checkbox path="mon" id="monId"/><br/>
                Zapotrzebowanie: <form:input type="text" path="nMon" id="nMonId"/><br/>
            </div>
            <div class="form-group">
                <label for="tueId"> Wtorek</label>
                <form:checkbox path="tue" id="tueId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nTue" id="nTueId"/><br/>
            </div>
            <div class="form-group">
                <label for="wedId"> Środa</label>
                <form:checkbox path="wed" id="wedId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nWed" id="nWedId"/><br/>
            </div>
            <div class="form-group">
                <label for="thuId"> Czwartek</label>
                <form:checkbox path="thu" id="thuId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nThu" id="nThuId"/><br/>
            </div>
            <div class="form-group">
                <label for="friId"> Piątek</label>
                <form:checkbox path="fri" id="friId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nFri" id="nFriId"/><br/>
            </div>
            <div class="form-group">
                <label for="satId"> Sobota</label>
                <form:checkbox path="sat" id="satId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nSat" id="nSatId"/><br/>
            </div>
            <div class="form-group">
                <label for="sunId"> Niedziela</label>
                <form:checkbox path="sun" id="sunId"/><br/>
                Zapotrzebowanie:
                <form:input type="text" path="nSun" id="nSunId"/><br/>
            </div>

            <form:hidden path="pub.id" id="pubId"/>

            <br/><br/>
            <input type="submit" value="Zapisz"><br/>
        </div>
    </div>

</form:form>
<a href="/pub/info">Wróć</a>
</body>
</html>
