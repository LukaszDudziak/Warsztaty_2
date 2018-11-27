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
</head>
<body>
<form:form method="post" modelAttribute="pub">
    <label for="nameId"> Nazwa:</label>
    <form:input type="text" path="name" id="nameId"/><br/>
    <form:errors path="name"/>

    <label for="addressId"> Adres:</label>
    <form:input type="text" path="address" id="addressId"/><br/>
    <form:errors path="address"/>

    <label for="phoneNumberId">Numer telefonu: </label>
    <form:input path="phoneNumber" type="text" id="phoneNumberId"/>
    <form:errors path="phoneNumber"/>

    <label for="emailId">Email:</label>
    <form:input type="text" path="email" id="emailId"/><br/>
    <form:errors path="email"/>

    <label for="nipId">Nip:</label>
    <form:input type="text" path="nip" id="nipId"/><br/>
    <form:errors path="nip"/>

    <br/><br/>
    <input type = "submit" value="save"><br/>



</form:form>
</body>
</html>
