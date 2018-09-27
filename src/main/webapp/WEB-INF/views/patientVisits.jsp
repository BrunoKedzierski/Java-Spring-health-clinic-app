<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 13.09.18
  Time: 20:38
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
                    <th>Cause</th>
                    <th>Date</th>
                    <th>Diagnosis</th>
                    <th>Prescription</th>
                    <th>Referalls</th>
                    <th>Status</th>
                    <th>Doctor</th>

                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Cause</th>
                    <th>Date</th>
                    <th>Diagnosis</th>
                    <th>Prescription</th>
                    <th>Referalls</th>
                    <th>Status</th>
                    <th>Doctor</th>

                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="visit" items="${visits}">
                    <tr>
                        <td>${visit.id}</td>
                        <td>${visit.cause}</td>
                        <td>${visit.date}</td>
                        <td>${visit.diagnosis}</td>
                        <td>${visit.prescription}</td>
                        <td>${visit.referalls}</td>
                        <td>${visit.status}</td>
                        <td>${visit.doctor.surname}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="/admin/visit/choose/?id=${id}" class="btn btn-primary " role="button" a>Book</a>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>


            <jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>


</html>
