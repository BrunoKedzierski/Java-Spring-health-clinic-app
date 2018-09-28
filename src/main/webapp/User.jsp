<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 28.09.18
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3 ">
            <div class="list-group ">
                <a href="#" class="list-group-item list-group-item-action active">Your Profile</a>
                <a href="#" class="list-group-item list-group-item-action">Your appointments</a>
                <a href="#" class="list-group-item list-group-item-action">Your services</a>
                <a href="#" class="list-group-item list-group-item-action">Messages</a>
                <a href="#" class="list-group-item list-group-item-action">Settings</a>
                <a href="#" class="list-group-item list-group-item-action">Logout</a>


            </div>
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Your Profile</h4>
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well"> Name: </div>
                            <div class="well"> Surname: </div>
                            <div class="well"> Date of birth: </div>
                            <div class="well"> Pesel: </div>
                            <div class="well"> Main Doctor: </div>
                            <div class="well"> Height: </div>
                            <div class="well"> Weight: </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
