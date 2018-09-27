<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 12.09.18
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>
<h1 style="text-align: center;"> Book visit</h1>
<hr>
<form:form modelAttribute="visit" method="POST">
    <form:hidden path="patient.id" value="${patient.id}"  />
    <div class="form-group" style="margin-left: auto;margin-right: auto;">
        <label>Date and time</label>
        <form:input cssClass="form-control"  path="date" id="timePicker" required="true" />
        </label>
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect5">Cause</label>
        <form:select  cssClass="form-control" path="cause" id="exampleFormControlSelect5"  >
            <c:forEach var="cause" items="${causes}">
                <form:option value="${cause}" label="${cause.description}"/>
            </c:forEach>
            </form:select>
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect7">${spec}</label>
        <form:select items="${doctors}" path="doctor.id"  cssClass="form-control" itemValue="id" itemLabel="surname" id="exampleFormControlSelect7"/>
    </div>
    <button type="submit" class="btn-lg btn-primary" style="float: right" value="submit">Add <i class="fas fa-plus"></i></button>
</form:form>


<script>
    (function($) {
        var dateTimePicker = kendo.ui.DateTimePicker;

        var MyWidget = dateTimePicker.extend({

            init: function(element, options) {
                dateTimePicker.fn.init.call(this, element, options);
            },
            startTime: function(startTime) {
                var timeViewOptions = this.timeView.options;
                timeViewOptions.min = startTime;
                this.timeView.setOptions(timeViewOptions);
            },
            endTime: function(endTime) {
                var timeViewOptions = this.timeView.options;
                timeViewOptions.max = endTime;
                this.timeView.setOptions(timeViewOptions);
            },
            options: {
                name: "CustomDateTimePicker",
                interval: 20,
                format: "yyyy-MM-dd HH:mm",
                disableDates: ["sa", "su"]





            }
        });

        kendo.ui.plugin(MyWidget);

    })(jQuery);
    var datePicker = $("#timePicker").kendoCustomDateTimePicker().data("kendoCustomDateTimePicker");
    datePicker.startTime("07:00");
    datePicker.endTime("20:00");

</script>
<jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
