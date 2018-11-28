<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: pudziak_srudziak
  Date: 28.11.18
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="schedule">
    ${schedule.date}<br>
    <br>
    <c:if test="${schedule.pubOpen.mon == true}">
        Poniedziałek:<br>
        <c:forEach begin="1" end="${schedule.pubOpen.nMon}">
            <form:select path="workingEmployeeMon">
                <c:forEach items="${schedule.employeeDisposition}" var="disp">
                    <c:if test="${disp.mon==true}">
                        <form:option value="${disp.employee.firstName}"/>
                    </c:if>
                </c:forEach>
            </form:select>

        </c:forEach>
    </c:if>
<br>
    <c:if test="${schedule.pubOpen.tue == true}">
        Wtorek:<br>
        <c:forEach begin="1" end="${schedule.pubOpen.nTue}">
            <form:select path="workingEmployeeTue">
                <c:forEach items="${schedule.employeeDisposition}" var="disp">
                    <c:if test="${disp.tue==true}">
                        <form:option value="${disp.employee.firstName}"/>
                    </c:if>
                </c:forEach>
            </form:select>
        </c:forEach>
    </c:if>

<br><br>
    <input type="submit">
</form:form>
</body>
</html>
