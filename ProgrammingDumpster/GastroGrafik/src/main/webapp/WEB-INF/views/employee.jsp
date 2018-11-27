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

</head>
<body>
<form:form method="post" modelAttribute="employee">
    <label for="firstNameId"> Imie:</label>
    <form:input type="text" path="firstName" id="firstNameId"/><br/>
    <form:errors path="firstName"/>

    <label for="lastNameId"> Nazwisko:</label>
    <form:input type="text" path="lastName" id="lastNameId"/><br/>
    <form:errors path="lastName"/>

    <label for="emailId">Email:</label>
    <form:input type="text" path="email" id="emailId"/><br/>
    <form:errors path="email"/>

    <label for="phoneNumberId">Numer telefonu: </label>
    <form:input path="phoneNumber" type="text" id="phoneNumberId"/>
    <form:errors path="phoneNumber"/>

    <label for="employedId">Data zatrudnienia: </label>
    <form:input type="date" path="employed" id="employedId"/>
    <form:errors path="employed"/>

    <br/><br/>
    <input type = "submit" value="save"><br/>



</form:form>
</body>
</html>
