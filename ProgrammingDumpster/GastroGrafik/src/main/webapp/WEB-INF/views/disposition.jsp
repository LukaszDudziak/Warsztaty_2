<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="employeeDisposition">

    <label for="monId"> Poniedziałek:</label>
    <form:checkbox path="mon" id="monId"/><br/>

    <label for="tueId"> Wtorek:</label>
    <form:checkbox path="tue" id="tueId"/><br/>

    <label for="wedId"> Środa:</label>
    <form:checkbox path="wed" id="wedId"/><br/>

    <label for="thuId"> Czwartek:</label>
    <form:checkbox path="thu" id="thuId"/><br/>

    <label for="friId"> Piątek:</label>
    <form:checkbox path="fri" id="friId"/><br/>

    <label for="satId"> Sobota:</label>
    <form:checkbox path="sat" id="satId"/><br/>

    <label for="sunId"> Niedziela:</label>
    <form:checkbox path="sun" id="sunId"/><br/>

    <form:hidden path="employee.id" id="employeeId"/>

    <br/>
    <input type="submit" value="save"><br/>

</form:form>
</body>
</html>
