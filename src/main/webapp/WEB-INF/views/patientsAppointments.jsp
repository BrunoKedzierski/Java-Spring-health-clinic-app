<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 14.09.18
  Time: 11:36
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
                    <th>Date</th>
                    <th>Name</th>
                    <th>Cost</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Date</th>
                    <th>Name</th>
                    <th>Cost</th>

                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.id}</td>
                        <td>${appointment.date}</td>
                        <td>${appointment.service.name}</td>
                        <td>${appointment.service.cost}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="/admin/serviceAppointement/book?patientId=${id}" class="btn btn-primary " role="button" a>Book</a>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>


            <jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
