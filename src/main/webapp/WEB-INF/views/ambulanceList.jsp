<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11.09.18
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ambulances</title>
</head>
<style>
    th, td {
        border: 1px solid black;
        padding: 10px 15px;
    }
</style>
<body>
<table>
<th>Callsign</th>
<th>Type</th>
<th>Ready</th>
<th>Action</th>
<c:forEach var="ambulance" items="${ambulances}">
    <tr>
        <td>${ambulance.callsign}</td>
        <td>${ambulance.ambulanceType.description}</td>
        <td>${ambulance.ready}</td>
        <td><a href="/ambulance/update?id=${ambulance.id}">Edit</a> <a href="/ambulance/delete?id=${ambulance.id}" onclick = "if (! confirm('Are you sure?')) { return false; }">Delete</a></td>


    </tr>

</c:forEach>
</table>
</body>
</html>
