<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/plugins/fontawesome-free/css/all.min.css" />">
  <!-- Ionicons -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/css/adminlte.css" />">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2uDzEktFvqAcppBjj52NPnIBpsX47euc&libraries=places"></script>
  <style type="text/css"></style>
</head>

<body class="sidebar-mini sidebar-collapse"">
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
      <li class="nav-item">
        <a class="nav-link" data-toggle="dropdown" href="#">
        	<i class="fas fa-hand-holding-heart"></i>
        </a>
	  </li>
	  <li class="nav-item">
        <a class="nav-link" data-toggle="dropdown" href="#">
        	<i class="fas fa-plus"></i>
        </a>
	  </li>
	  <li class="nav-item">
        <a class="nav-link" data-toggle="dropdown" href="#">
        	<i class="fas fa-location-arrow"></i>
        </a>
	  </li>
	  <li class="nav-item">
        <a class="nav-link" data-toggle="dropdown" href="#">
        	<i class="fas fa-dice"></i>
        </a>
	  </li>
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
            <a href="<c:url value="/default/home" />" class="nav-link">
			  <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/default/calendar" />" class="nav-link">
			  <i class="nav-icon fas fa-calendar"></i>
              <p>
                Calendar
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/default/profile" />" class="nav-link">
			  <i class="nav-icon fas fa-user-circle"></i>
              <p>
                Profile
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/default/addressbook" />" class="nav-link">
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

        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-hand-holding-heart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Post event</span>
                <span class="info-box-number"></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-plus"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Add Group</span>
                <span class="info-box-number">41,410</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-location-arrow"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Check-in</span>
                <span class="info-box-number">760</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-dice"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Games</span>
                <span class="info-box-number">2,000</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <div class="row">
     		<div class="col-md-1">
     		</div>
     		 <div class="col-md-6">
	            <div class="card">
	              <div class="card-header p-2">
	                <ul class="nav nav-pills">
	                <li class="nav-item"><a class="nav-link active" href="#family" data-toggle="tab">Family</a></li>
	                  <li class="nav-item"><a class="nav-link" href="#workplace" data-toggle="tab">Workplace</a></li>
	                </ul>
	              </div><!-- /.card-header -->
	              <div class="card-body">
	                <div class="tab-content">
	                  <!-- /.tab-pane -->
	                  <div class="tab-pane  active" id="family">
                        <div class="row" style="padding: 1%;">
							<div class="col-md-12">
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/family1.jpg" class="img-circle"  width = "100%" alt="User Image">
								</div>
								<div class="col-md-6">
                                   	<a href="/home/groups"><h3>Badjatya Family</h3></a>
                                   	<h5>Hum saath saath hai!!</h5>
								</div>
							</div>
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/family2.jpg" class="img-circle" width = "100%" alt="User Image">
								</div>
								<div class="col-md-6">
                                   <h3>Chandiwal Cousins</h3>
                                   <h5>We live in our own world</h5>
								</div>
							</div>
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/family3.jpg" class="img-circle elevation-2" width = "100%" alt="User Image">
								</div>
								<div class="col-md-6">
                                  	<h3>Sethi Circus</h3>
								</div>
							</div>
							</div>
						</div>
                  		</div>
                  		<div class="tab-pane" id="workplace">
                        <div class="row" style="padding: 1%;">
                            <div id="workplaceBen" class="col-md-12">
                            </div>
                        </div>
                  		</div>
                 		</div>
              	</div>
     		   </div>
       		</div>
          <!-- /.col -->
		  <div class="col-md-1">
		  </div>
          <div class="col-md-3">
			<div class="d-none d-lg-block card card-footer-compact card-comments ">
			  <div class="card-header-compact">
				<h5><b>To-do List</b></h5>
			  </div>
			  <!-- /.card-header -->
			  <!-- /.card-body -->
			  <div class="card-comment card-body-compact">
			  	<p class="username-light">Grandma doctor visit</p>
				<p class="text-muted">Don't forget to take X-Ray</p>
				<p class="text-muted">At 4pm</p>
			  </div>
			  <div class="card-comment card-body-compact">
			  	<p class="username-light">Kanika's Birthday Party</p>
				<p class="text-muted">Pick Sanjana on the way</p>
				<p class="text-muted">At 10 pm</p>
			  </div>
			  <div class="card-comment center card-body-compact">
				<p class="text-primary">Show more</p>
			  </div>
			</div>
		
			<div class="d-none d-lg-block card card-footer-compact card-comments ">
			  <div class="card-header-compact">
				<h5><b>Upcoming Events</b></h5>
			  </div>
			<!-- .card-body -->  
			  <div class="card-comment card-body-compact">
			  	<p class="username-light">Yoga class</p>
				<p class="text-muted">13 February @5pm</p>
			  </div>
			  <div class="card-comment card-body-compact">
			  	<p class="username-light">Family Dinner</p>
			  	<p class="text-muted">Venue: Fagun</p>
				<p class="text-muted">15 February @6pm</p>
			  </div>
			  <div class="card-comment center card-body-compact">
				<p class="text-primary">Show more</p>
			  </div>
			<!-- /.card-body -->
		    </div>
				
		  </div>
          <!-- /.col -->
          <div class="col-md-1">
		  </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  
 </div>
 <!-- /.wrapper --> 
  
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