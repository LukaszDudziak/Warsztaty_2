<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px solid black">

    <tr>
        <th>Poniedziałek</th>
        <th>Wtorek</th>
        <th>Środa</th>
        <th>Czwartek</th>
        <th>Piątek</th>
        <th>Sobota</th>
        <th>Niedziela</th>
        <th>Edycja dyspozycji</th>

    </tr>
    <c:forEach var="disposition" items="${employeeDisposition}">
        <tr>
            <td>${disposition.mon}</td>
            <td>${disposition.tue}</td>
            <td>${disposition.wed}</td>
            <td>${disposition.thu}</td>
            <td>${disposition.fri}</td>
            <td>${disposition.sat}</td>
            <td>${disposition.sun}</td>
            <td><a href="/disposition/edit/${disposition.id}">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
