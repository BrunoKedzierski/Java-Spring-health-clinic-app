<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11.09.18
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-user"></i></i>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Pesel</th>
                    <th>Date admitted</th>
                    <th>Age</th>
                    <th>Height</th>
                    <th>Weight</th>
                    <th>Gender</th>
                    <th>Phone number</th>
                    <th>Address</th>
                    <th>Visits</th>
                    <th>Services</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Pesel</th>
                    <th>Date admitted</th>
                    <th>Age</th>
                    <th>Height</th>
                    <th>Weight</th>
                    <th>Gender</th>
                    <th>Phone number</th>
                    <th>Address</th>
                    <th>Visits</th>
                    <th>Services</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="patient" items="${patients}">
                    <tr>
                        <td>${patient.id}</td>
                        <td>${patient.name}</td>
                        <td>${patient.surname}</td>
                        <td>${patient.pesel}</td>
                        <td>${patient.dateAdmitted}</td>
                        <td>${patient.age}</td>
                        <td>${patient.height}</td>
                        <td>${patient.weight}</td>
                        <td>${patient.gender}</td>
                        <td>${patient.phoneNumber}</td>
                        <td>${patient.address}</td>
                        <td><a href="/admin/visit/visits/?id=${patient.id}" >Visits </a></td>
                        <td><a href="/admin/serviceAppointement/appointments?id=${patient.id}" >Services </a></td>
                        <td><a href="/admin/patient/delete?id=${patient.id}" onclick = "if (! confirm('Are you sure?')) { return false; }">Delete <i class="fas fa-trash-alt"></i></a></td>
                        <td><a href="/admin/patient/update?id=${patient.id}" >Edit <i class="fas fa-edit"></i></a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>


            <jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>

</html>
