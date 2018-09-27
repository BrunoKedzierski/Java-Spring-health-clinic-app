<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 13.09.18
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>


<!-- Page Content -->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-user-md"></i>
        ${spec}
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Speciality</th>
                    <th>Gender</th>
                    <th>Pesel</th>
                    <th>Addres</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Speciality</th>
                    <th>Gender</th>
                    <th>Pesel</th>
                    <th>Addres</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="doctor" items="${doctors}">
                    <tr>
                        <td>${doctor.id}</td>
                        <td>${doctor.name}</td>
                        <td>${doctor.surname}</td>
                        <td>${doctor.gender}</td>
                        <td>${doctor.speciality}</td>
                        <td>${doctor.pesel}</td>
                        <td>${doctor.address}</td>
                        <td><a href="/admin/doctor/delete?id=${doctor.id}" onclick = "if (! confirm('Are you sure?')) { return false; }">Delete <i class="fas fa-trash-alt"></i></a></td>
                        <td><a href="/admin/doctor/update?id=${doctor.id}" >Edit <i class="fas fa-edit"></i></a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>

</div>
<jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
