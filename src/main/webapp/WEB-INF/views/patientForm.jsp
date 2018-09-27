<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11.09.18
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>
<h1 style="text-align: center;"> Add Patient</h1>
<hr>
<form:form modelAttribute="patient" method="POST">
    <form:hidden path="id"/>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Name</label>
        <form:input type="text" cssClass="form-control" placeholder="name" path="name" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Surname</label>
        <form:input type="text" cssClass="form-control" placeholder="surname" path="surname" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Email</label>
        <form:input type="text" cssClass="form-control" placeholder="surname" path="username" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Password</label>
        <form:input type="password" cssClass="form-control" placeholder="surname" path="password" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Pesel</label>
        <form:input type="number" cssClass="form-control" placeholder="pesel" path="pesel" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Age</label>
        <form:input type="number" cssClass="form-control" placeholder="age" path="age" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Address</label>
        <form:input type="text" cssClass="form-control" placeholder="addresss" path="address" required="true" />
        </label>
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect5">Gender</label>
        <form:select  cssClass="form-control" path="gender" id="exampleFormControlSelect5"  >

            <form:option value="M" label="Male"/>
            <form:option value="F" label="Female"/>

        </form:select>

    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect7">Leading doctor</label>
     <form:select items="${doctors}" path="doctor.id"  cssClass="form-control" itemValue="id" itemLabel="surname" id="exampleFormControlSelect7"/>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Weight</label>
        <form:input type="number" cssClass="form-control" placeholder="weight" path="weight" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Height</label>
        <form:input type="number" cssClass="form-control" placeholder="height" path="height" required="true" />
        </label>
    </div>
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Phone number</label>//        model.addAttribute("patient", patient);
        <form:input type="tel" cssClass="form-control" placeholder="phone" path="phoneNumber" required="true" />
        </label>
    </div>
    <button type="submit" class="btn-lg btn-primary" style="float: right" value="submit">Add <i class="fas fa-plus"></i></button>
</form:form>


<jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>

</html>
