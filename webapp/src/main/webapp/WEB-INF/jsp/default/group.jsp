<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Group Profile Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/plugins/fontawesome-free/css/all.min.css" />">
  <!-- Ionicons -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/css/adminlte.css" />">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2uDzEktFvqAcppBjj52NPnIBpsX47euc&libraries=places"></script>
</head>>

<body class="sidebar-mini sidebar-collapse">
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
            <a href="<c:url value="/home/events" />" class="nav-link">
			  <i class="nav-icon fas fa-calendar"></i>
              <p>
                Events
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/groups" />" class="nav-link">
			  <i class="nav-icon fas fa-hand-holding-heart"></i>
              <p>
                Groups
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
	              <div class="card-header p-2">
	                <ul class="nav nav-pills">
	                  <li class="nav-item"><a class="nav-link active" href="#followed" data-toggle="tab">Events</a></li>
					  <li class="nav-item"><a class="nav-link" href="#pledged" data-toggle="tab">Members</a></li>
	                </ul>
	              </div><!-- /.card-header -->
	              <div class="card-body">
	                <div class="tab-content">
	                  <!-- /.tab-pane -->
	                  <div class="tab-pane" id="pledged">
                        <div class="row" style="padding: 1%;">
							<div class="col-md-12">
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/user6-128x128.jpg" class="img-circle"  width = "20%" alt="User Image">
								</div>
								<div class="col-md-6">
                                   	<a href="/group"><h3>Akash Goyal</h3></a>
								</div>
							</div>
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/user7-128x128.jpg" class="img-circle" width = "20%" alt="User Image">
								</div>
								<div class="col-md-6">
                                   <h3>Shruti Jain</h3>
								</div>
							</div>
							<div class="row elevation-1" style="padding: 1%;">
								<div class="col-md-4">
									<img id="followeePic" src="/img/user8-128x128.jpg" class="img-circle elevation-2" width = "20%" alt="User Image">
								</div>
								<div class="col-md-6">
                                  	<h3>Gaurav Modi</h3>
								</div>
							</div>
							  <!--
								<c:forEach var="ben" items="${benpledged}">
                                   	<div class="row elevation-1" style="padding: 1%;">
										<div class="col-md-4">
											<img id="followeePic" src="/img/user4-128x128.jpg" class="img-circle elevation-2" alt="User Image">
										</div>
										<div class="col-md-6">
                                          	  <a href="/beneficiary/profile/${ben.id}">
                                              	<h3>${ben.name}</h3>
                                          	  </a>
										</div>
									</div>
                               	</c:forEach>
                              -->
							</div>
						</div>
                  		</div>
                  		<div class="tab-pane active" id="followed">
                        <div class="row" style="padding: 1%;">
                            <div id="followedBen" class="col-md-12">
                                <c:forEach var="ben" items="${followedBen}">
                                    <div id="followedBen${ben.id}" class="row elevation-1" style="padding: 1%;">
                                        <div class="col-md-4">
                                            <img id="followeeBen${ben.id}Pic" src="/img/user4-128x128.jpg"
                                                class="img-circle elevation-2" alt="User Image">
                                        </div>
                                        <div class="col-md-6">
                                            <a><h3>${ben.name}</h3>
                                            </a>
                                        </div>
                                        <div class="col-md-2">
                                            <button type="button" onclick="unfollow(${ben.id})" class=" float-right follow-button btn btn-outline-primary btn-xs">Unfollow</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                  		</div>
                 		</div>
              	</div>
     		   </div>
       		</div>
          <!-- /.col -->
        </div>
  	  </div>
  	</div>
  </div>
  
  
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