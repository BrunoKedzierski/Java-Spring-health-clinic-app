

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Medica administration panel</title>

    <!-- Bootstrap core CSS-->
    <link href="/BOOTSTRAP/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/BOOTSTRAP/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/BOOTSTRAP/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/BOOTSTRAP/css/sb-admin.css" rel="stylesheet">
    <link href="/Kstyles/kendo.common.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/Kstyles/kendo.common.min.css" />
    <link rel="stylesheet" href="/Kstyles/kendo.default.min.css" />
    <script src="/Kjs/jquery.min.js"></script>
    <script src="/Kjs/kendo.all.min.js"></script>

</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark  border-bottom border-dark static-top" style="background-color: #ADD8E6">

    <a  href="/admin/panel" style="float:right; line-height: 20px; font-size: 30px">Medica<i class="fab fa-creative-commons-sampling-plus"></i></a>

    <button class="btn btn-link btn-lg text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>









</nav>

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle"  id="pagesDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user"></i>
                <span>Patients</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="pagesDropdown1">
                <a class="dropdown-item" href="/admin/patient/add"><i class="fas fa-plus"></i><span>Add patient</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/admin/patient/list"><span>All patients</span></a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle"  id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-md"></i>
                <span>Doctors</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                <a class="dropdown-item" href="/admin/doctor/add"><i class="fas fa-plus"></i><span>Add doctor</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Pediatricians"><span>Pediatricians</span></a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Cardiologists"> <span>Cardiologists</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Allergists"> <span>Allergists</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Surgeons"> <span>Surgeons</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Psychiatrsts"> <span>Psychiatrsts</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Neurologist"> <span>Neurologist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Pulmonologyst"><span>Pulmonologyst</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Oculist"> <span>Oculist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Gynecologist"> <span>Gynecologist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Proctologist"> <span>Proctologist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Dentist"> <span>Dentist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Dermatologist"> <span>Dermatologist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Anasthesiologist"> <span>Anasthesiologist</span> </a>
                <a class="dropdown-item" href="/admin/doctor/show?spec=Internist"> <span>Internist</span> </a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle"  id="pagesDropdown8" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-notes-medical"></i>
                <span>Services</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="pagesDropdown8">
                <a class="dropdown-item" href="/admin/service/add"><i class="fas fa-plus"></i><span>Add Service</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/admin/service/list"><span>All Services</span></a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/help.jsp">
                <i class="fas fa-fw fa-question-circle"></i>
                <span>Help</span></a>
        </li>
        <li class="nav-item">
            <form method="post" action="/logout">
                <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
                <button type="submit" class="btn btn-primary btn-block btn"><i class="fas fa-fw fa-sign-out-alt"></i>
                    <span>Logout</span></button>
            </form>

        </li>
        <li class="nav-item" style="margin-top: 300px; margin-left: 15px">
            <a class="nav-link" href="#">
                <i class="fab fa-java fa-10x"></i><a/>
            </a>
        </li>

    </ul>

    <div id="content-wrapper">

        <div class="container-fluid">