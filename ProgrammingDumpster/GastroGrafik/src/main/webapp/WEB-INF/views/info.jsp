<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 27.11.18
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="pub" items="${pubs}">
    <tr>
        <td>${pub.name}</td>
        <td>${pub.address}</td>
        <td>${pub.email}</td>
        <td>${pub.phoneNumber}</td>
        <td>${pub.nip}</td>
        <td><a href="/pub/edit/${pub.id}">Edytuj informacje</a></td>
    </tr>
</c:forEach>
</body>
</html>
