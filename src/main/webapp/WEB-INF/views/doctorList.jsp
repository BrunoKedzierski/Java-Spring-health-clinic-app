<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11.09.18
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctors</title>
</head>
<body>
<table>
    <th>Name</th>
    <th>Surname</th>
    <th>Speciality</th>
    <c:forEach var="doctor" items="${doctors}">
        <tr>
            <td>${doctor.name}</td>
            <td>${doctor.surname}</td>
            <td>${doctor.speciality.description}</td>
            <td><a href="/doctor/update?id=${doctor.id}">Edit</a></td>
            <td><a href="/doctor/delete?id=${doctor.id}" onclick = "if (! confirm('Are you sure?')) { return false; }">Delete</a></td>


        </tr>

    </c:forEach>
</table>

</body>
</html>
