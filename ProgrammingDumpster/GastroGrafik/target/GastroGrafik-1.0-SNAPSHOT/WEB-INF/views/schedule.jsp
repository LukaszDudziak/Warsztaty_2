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
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<form:form method="post" modelAttribute="schedule">

<div class="container">
    <div class="card">
        <h3 class="header" align="center">Dawej ten grafik</h3>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.mon == true}">
                Poniedziałek:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nMon}">
                    <form:select path="workingEmployeeMon">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.mon==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.mon == false}">
                Poniedziałek: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.tue == true}">
                Wtorek:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nTue}">
                    <form:select path="workingEmployeeTue">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.tue==true}">
                                <form:option value="${disp.employee.lastName} "/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.tue == false}">
                Wtorek: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.wed == true}">
                Środa:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nWed}">
                    <form:select path="workingEmployeeWed">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.wed==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.wed == false}">
                Środa: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.thu == true}">
                Czwartek:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nThu}">
                    <form:select path="workingEmployeeThu">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.thu==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.thu == false}">
                Czwartek: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.fri == true}">
                Piątek:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nFri}">
                    <form:select path="workingEmployeeFri">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.fri==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.fri == false}">
                Piątek: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.sat == true}">
                Sobota:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nSat}">
                    <form:select path="workingEmployeeSat">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.sat==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.sat == false}">
                Sobota: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <c:if test="${schedule.pubOpen.sun == true}">
                Niedziela:<br>
                <c:forEach begin="1" end="${schedule.pubOpen.nSun}">
                    <form:select path="workingEmployeeSun">
                        <option value="">Wybierz</option>
                        <c:forEach items="${schedule.employeeDisposition}" var="disp">
                            <c:if test="${disp.sun==true}">
                                <form:option value="${disp.employee.lastName}"/>
                            </c:if>
                        </c:forEach>
                    </form:select>
                </c:forEach>
            </c:if>
            <c:if test="${schedule.pubOpen.sun == false}">
                Niedziela: ZAMKNIĘTE
            </c:if>
        </div>
        <div class="form-group">
            <input type="submit" value="Zapisz grafik">
        </div>
        <div class="form-group">
        </div>
    </div>
    </form:form>
    <a href="/pub/info">Wróć</a>
</body>
</html>
