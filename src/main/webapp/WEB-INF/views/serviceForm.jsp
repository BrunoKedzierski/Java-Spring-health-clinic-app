<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 14.09.18
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>
<h1 style="text-align: center;"> Add Service</h1>
<hr>
<form:form modelAttribute="service" method="POST">
    <form:hidden path="id"/>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Name</label>
        <form:input type="text" cssClass="form-control" placeholder="name" path="name" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Cost</label>
        <form:input type="number" cssClass="form-control" placeholder="cost" path="cost" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Description</label>
        <form:input type="textarea" cssClass="form-control" placeholder="description" path="description" required="true" />
        </label>
    </div>
    <button type="submit" class="btn-lg btn-primary" style="float: right" value="submit">Add <i class="fas fa-plus"></i></button>
</form:form>


<jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
