<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 13.09.18
  Time: 23:08
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
                    <th>Description</th>
                    <th>Cost</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Cost</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                </tfoot>
                <tbody>
                <c:forEach var="service" items="${services}">
                    <tr>
                        <td>${service.id}</td>
                        <td>${service.name}</td>
                        <td>${service.description}</td>
                        <td>${service.cost}$</td>
                        <td><a href="/admin/service/delete?id=${service.id}" onclick = "if (! confirm('Are you sure?')) { return false; }">Delete <i class="fas fa-trash-alt"></i></a></td>
                        <td><a href="/admin/service/update?id=${service.id}" >Edit <i class="fas fa-edit"></i></a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>


            <jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
