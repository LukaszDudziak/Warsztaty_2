<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 26.11.18
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px solid black">

    <tr>
        <th>Imie</th>
        <th>Nazwisko</th>
        <th>Email</th>
        <th>Telefon</th>
        <th>Data zatrudnienia</th>

    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
            <td>${employee.email}</td>
            <td>${employee.phoneNumber}</td>
            <td>${employee.employed}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
