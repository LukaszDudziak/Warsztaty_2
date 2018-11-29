<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 29.11.18
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function confirmDelete(id, createDate) {
            if (confirm("Czy na pewno chcesz usunąć grafik? ")) {
                window.location.href = "/schedule/delete/" + id;
            }
        }
    </script>
</head>
<body>
<table border="1px solid black">

    <tr>
        <th>Data utworzenia:</th>
        <th>Poniedziałek</th>
        <th>Wtorek</th>
        <th>Środa</th>
        <th>Czwartek</th>
        <th>Piątek</th>
        <th>Sobota</th>
        <th>Niedziela</th>
        <th>Usuń</th>
    </tr>

    <c:forEach var="schedule" items="${schedules}">
        <tr>
            <td>${schedule.createDate}</td>
            <td>${schedule.workingEmployeeMon}</td>
            <td>${schedule.workingEmployeeTue}</td>
            <td>${schedule.workingEmployeeWed}</td>
            <td>${schedule.workingEmployeeThu}</td>
            <td>${schedule.workingEmployeeFri}</td>
            <td>${schedule.workingEmployeeSat}</td>
            <td>${schedule.workingEmployeeSun}</td>
            <td><a href="#" onclick="confirmDelete(${schedule.id}, '${employee.createDate}')">Usuń</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
