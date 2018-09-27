<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" th:href="@{/css/registration.css}" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form:form modelAttribute="user" method="post">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <div class="col-sm-9">
                        <form:input path="email" placeholder="Email"
                               class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9">
                        <form:input type="password" path="password"
                               placeholder="Password" class="form-control" />


                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">Register User</button>
                    </div>
                </div>
            </form:form>




        </div>
    </div>
</div>

</body>
</html>