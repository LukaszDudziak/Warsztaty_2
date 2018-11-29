<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<form:form method="post" modelAttribute="pub">
    <div class="container" align="center" >
        <div class="card">
            <h3 class="header" align="center">Edytuj informacje o lokalu</h3>

            <div class="form-group">
                <label for="nameId"> Nazwa:</label>
                <form:input type="text" path="name" id="nameId" class="form-group" /><br/>
                <form:errors path="name" element="div" cssClass="error"/>
            </div>
            <div class="form-group">
                <label for="addressId"> Adres:</label>
                <form:input type="text" path="address" id="addressId"/><br/>
                <form:errors path="address"/>
            </div>
            <div class="form-group">
                <label for="phoneNumberId">Numer telefonu: </label>
                <form:input path="phoneNumber" type="text" id="phoneNumberId"/>
                <form:errors path="phoneNumber"/>
            </div>
            <div class="form-group">
                <label for="emailId">Email:</label>
                <form:input type="text" path="email" id="emailId"/><br/>
                <form:errors path="email"/>
            </div>
            <div class="form-group">
                <label for="nipId">Nip:</label>
                <form:input type="text" path="nip" id="nipId"/><br/>
                <form:errors path="nip" element="div" cssClass="error"/>
            </div>

            <br/><br/>
            <button type="submit" class="btn-outline-primary">Zapisz informacje</button>


        </div>
    </div>

</form:form>
<a href="/pub/info">Wróć</a>
</body>
</html>
