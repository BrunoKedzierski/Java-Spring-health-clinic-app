<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11.09.18
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ambulances</title>
</head>
<body>
<form:form modelAttribute="ambulance" method="POST">
    <form:hidden path="id"/>
    Type: <form:select path="ambulanceType" multiple="false">
    <c:forEach var="type" items="${types}">
        <form:option value="${type}" label="${type.description}"/>
    </c:forEach>
</form:select>
    Callsign: <form:input path="callsign" maxlength="8" placeholder="max 8 characters"/>
    Ready: <form:radiobutton path="ready" value="true"/>
    Not ready: <form:radiobutton path="ready" value="false"/>

    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
