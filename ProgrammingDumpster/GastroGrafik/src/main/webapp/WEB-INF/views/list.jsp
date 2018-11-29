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
    <title>Lista pracowników:</title>
    <script>
        function confirmDelete(id, firstName) {
            if (confirm("Czy na pewno chcesz usunąć pracownika " + firstName + "\"")) {
                window.location.href = "/employees/delete/" + id;
            }
        }
    </script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<table border="1px solid black">

    <tr>
        <th>Imie</th>
        <th>Nazwisko</th>
        <th>Email</th>
        <th>Telefon</th>
        <th>Data zatrudnienia</th>
        <th>Edycja danych</th>
        <th>Usuń pracownika</th>
        <th>Podaj dyspozycyjność</th>

    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
            <td>${employee.email}</td>
            <td>${employee.phoneNumber}</td>
            <td>${employee.employed}</td>
            <td><a href="/employees/edit/${employee.id}">Edytuj</a></td>
            <td><a href="#" onclick="confirmDelete(${employee.id}, '${employee.lastName}')">Usuń</a></td>
            <td><a href="/disposition/add/${employee.id}"/>Podaj dyspo</td>

        </tr>
    </c:forEach>
</table>
<a href="/employees/add">Dodaj pracownika</a><br><br>

<a href="/pub/info">Wróć</a>
</body>
</html>
