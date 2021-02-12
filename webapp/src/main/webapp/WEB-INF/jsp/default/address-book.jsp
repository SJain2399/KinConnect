<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Address Book</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/plugins/fontawesome-free/css/all.min.css" />">
  <!-- Ionicons -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/css/adminlte.css" />">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2uDzEktFvqAcppBjj52NPnIBpsX47euc&libraries=places"></script>
  <style type="text/css">
  </style>
</head>

<body class="sidebar-mini sidebar-collapse" onload="checkDetails(${homePageData.user.filledDetails})">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>
	
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">4</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">4 Notifications</span>
          <div class="dropdown-divider"></div>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-birthday-cake mr-2"></i> It's Kanika birthday today!!
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> new member joined in #SethiCircus
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
	  <li class="nav-item">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <ion-icon class="far" name="exit-outline"></ion-icon>
        </a>
	  </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  
  
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="<c:url value="/img/AdminLTELogo.png" />"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Kin-Connect</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img id="image-profile-sidebar" src="/img/user7-128x128.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="<c:url value="/home/profile" />" class="d-block">Shruti Jain</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
       <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="<c:url value="/home" />" class="nav-link">
			  <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/calendar" />" class="nav-link">
			  <i class="nav-icon fas fa-calendar"></i>
              <p>
                Calendar
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/profile" />" class="nav-link">
			  <i class="nav-icon fas fa-user-circle"></i>
              <p>
                Profile
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/addressbook" />" class="nav-link">
			  <i class="nav-icon fas fa-address-book"></i>
              <p>
                Address Book
              </p>
            </a>
          </li>
		</ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	  <!-- Main content -->
      <div class="container-fluid">
        <!-- row -->
        <div class="row">
          <div class="col-md-1">
          </div>
          <div class="col-md-6">
        	<div class="card">
              <div class="card-header">
                <h3 class="card-title">Address Book</h3>

                <div class="card-tools">
                  <ul class="pagination pagination-sm float-right">
                    <li class="page-item"><a class="page-link" href="#">«</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">»</a></li>
                  </ul>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 30%">Contact</th>
                      <th style="width: 30%">Email</th>
                      <th style="width: 10%">Phone</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Akash Goyal</td>
                      <td>akashgoyal@gmail.com</td>
                      <td>7889712345</td>         
                    </tr>
                    <tr>
                      <td>Shweta Jain</td>
                      <td>shwetajain@gmail.com</td>
                      <td>8789712345</td>         
                    </tr>
                    <tr>
                      <td>Rahul Shrivastav</td>
                      <td>rahul@gmail.com</td>
                      <td>9879712345</td>         
                    </tr>
                      <tr>
                      <td>Gaurav Modi</td>
                      <td>modi@gmail.com</td>
                      <td>8889712345</td>         
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <div class="col-md-1">
          </div>
          <div class="col-md-3">

            <!-- About Me Box -->
            <div class="card card-primary card-outline" id="akash">
              <div class="card-header">
                <h3 class="card-title">Akash Goyal</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="/img/user8-128x128.jpg" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">7889712345</h3>

                <p class="text-muted text-center">akashgoyal@gmail.com</p>
				
				<hr>
				
                <strong><i class="fas fa-book mr-1"></i> Birth Date</strong>

                <p class="text-muted">
                  December 21, 1999
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Indore, India</p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Bio</strong>

                <p class="text-muted">Final year grad pursuing B.Tech. in Computer Science from GSITS</p>
              </div>
              <!-- /.card-body -->
              <div class="card-body">
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
                        <!-- About Me Box -->
            <div class="card card-primary card-outline" id="shweta">
              <div class="card-header">
                <h3 class="card-title">Shweta Jain</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="/img/user8-128x128.jpg" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">8789712345</h3>

                <p class="text-muted text-center">shwetajain@gmail.com</p>
				
				<hr>
				
                <strong><i class="fas fa-book mr-1"></i> Birth Date</strong>

                <p class="text-muted">
                  June 21, 1999
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Seoni, India</p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Bio</strong>

                <p class="text-muted">Final year grad pursuing B.Tech. in Computer Science from GSITS</p>
              </div>
              <!-- /.card-body -->
              <div class="card-body">
                
              </div>
              <!-- /.card-body -->
            </div>
            
                        <!-- About Me Box -->
            <div class="card card-primary card-outline" id="gaurav">
              <div class="card-header">
                <h3 class="card-title">Gaurav Modi</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="/img/user8-128x128.jpg" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">8889712345</h3>

                <p class="text-muted text-center">modi@gmail.com</p>
				
				<hr>
				
                <strong><i class="fas fa-book mr-1"></i> Birth Date</strong>

                <p class="text-muted">
                  December 21, 1999
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Indore, India</p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Bio</strong>

                <p class="text-muted">Final year grad pursuing B.Tech. in Computer Science from GSITS</p>
              </div>
              <!-- /.card-body -->
              <div class="card-body">
                
              </div>
              <!-- /.card-body -->
            </div>
            
                        <!-- About Me Box -->
            <div class="card card-primary card-outline" id="rahul">
              <div class="card-header">
                <h3 class="card-title">Rahul Shrivastav</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="/img/user8-128x128.jpg" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">9879712345</h3>

                <p class="text-muted text-center">rahul@gmail.com</p>
				
				<hr>
				
                <strong><i class="fas fa-book mr-1"></i> Birth Date</strong>

                <p class="text-muted">
                 January 21, 1999
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Dewas, India</p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Bio</strong>

                <p class="text-muted">Final year grad pursuing B.Tech. in Computer Science from GSITS</p>
              </div>
              <!-- /.card-body -->
              <div class="card-body">
                
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- /.col -->
        <!-- /row -->
      </div>
	  <!-- /Main content -->
	</div>
	<!-- /Content Wrapper -->   
	      
	      
	<!-- ionic -->
	<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
	<!-- jQuery -->
	<script src="<c:url value="/plugins/jquery/jquery.min.js" />"></script>
	<!-- Bootstrap 4 -->
	<script src="<c:url value="/plugins/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/js/adminlte.min.js" />"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/js/demo.js" />"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script>
	
	</script>
</body>
</html>