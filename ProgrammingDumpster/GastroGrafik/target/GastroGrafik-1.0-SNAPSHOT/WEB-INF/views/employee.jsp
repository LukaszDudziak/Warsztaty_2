<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 26.11.18
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Lista pracowników</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<form:form method="post" modelAttribute="employee">

<div class="container" align="center">
    <div class="card">
        <h3 class="header" align="center">Edytuj informacje o pracowniku</h3>

        <label for="firstNameId"> Imie:</label>
        <form:input type="text" path="firstName" id="firstNameId"/><br/>
        <form:errors path="firstName" element="div" cssClass="error"/>

        <label for="lastNameId"> Nazwisko:</label>
        <form:input type="text" path="lastName" id="lastNameId"/><br/>
        <form:errors path="lastName" element="div" cssClass="error"/>

        <label for="emailId">Email:</label>
        <form:input type="text" path="email" id="emailId"/><br/>
        <form:errors path="email" element="div" cssClass="error"/>

        <label for="phoneNumberId">Numer telefonu: </label>
        <form:input path="phoneNumber" type="text" id="phoneNumberId"/><br>
        <form:errors path="phoneNumber" element="div" cssClass="error"/>

        <label for="employedId">Data zatrudnienia: </label>
        <form:input type="date" path="employed" id="employedId"/>
        <form:errors path="employed" element="div" cssClass="error"/>

        <br/><br/>
        <input type="submit" value="Zapisz"><br/>

        </form:form>
    </div>
</div>
</body>
</html>
