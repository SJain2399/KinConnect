<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/plugins/fontawesome-free/css/all.min.css" />">
  <!-- Ionicons -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/css/adminlte.css" />">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2uDzEktFvqAcppBjj52NPnIBpsX47euc&libraries=places"></script>
</head>

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

    <!-- /.sidebar -->
    </div>
    <!-- /.sidebar -->
  </aside>
  
  <div class="content-wrapper" style="min-height: 1419.6px;">
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="${groupInfoPageData.groupInfo.pictureLink}" alt="Group Icon">
                </div>

                <h3 class="profile-username text-center">${groupInfoPageData.groupInfo.groupName}</h3>

                <p class="text-muted text-center">Hum Saath Saath Hai!!</p>

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <span><a class="active" href="#dropdown" data-toggle="tab">Members</a><a class="float-right">4</a></span>
                  </li>
                </ul>
              </div>
              <div class="tab-content">
                <!-- /.tab-pane -->
                <div class="tab-pane" id="dropdown">
                  <div class="row" style="padding: 1%;">
				    <div class="col-md-12">
				      <c:forEach var="user" items="${groupInfoPageData.subscribers}">
                        <div class="row elevation-1" style="padding: 1%;">
						  <div class="col-md-4">
						    <img id="followeePic" src="${user.pictureLink}" class="img-circle elevation-2" alt="User Profile Image">
						  </div>
						  <div class="col-md-6">
                            <a href="/home/user/profile/${user.id}">
                              <h3>${user.firstName} ${user.lastName}</h3>
                            </a>
					      </div>
					   </div>
                     </c:forEach>
				   </div>
			     </div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-6">
            <div class="card">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#post" data-toggle="tab">Events</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="post">
                    <!-- Post -->
                    <c:forEach var="event" items="${groupInfoPageData.events}">
	                    <div class="post">
	                      <div class="user-block">
	                        <img class="img-circle img-bordered-sm" src="/img/user7-128x128.jpg" alt="user image">
	                        <span class="username">
	                          <a href="#">${event.user.firstName} ${event.user.lastName}</a>
	                          <a href ="#" class="float-right btn-tool">${event.eventDate}</a>
	                        </span>
	                        <span class="description"></span>
	                      </div>
	                      <!-- /.user-block -->
	                      <p>
	                        ${event.description} 
	                      </p>
							
	                      <p>
	                        <a href="#" class="link-black text-sm mr-2"><i class="fas fa-share mr-1"></i> Share</a>
	                        <a href="#" class="link-black text-sm"><i class="far fa-thumbs-up mr-1"></i> Like</a>
	                        <span class="float-right">
	                          <a href="#" class="link-black text-sm">
	                            <i class="far fa-comments mr-1"></i> Comments (5)
	                          </a>
	                        </span>
	                      </p>
	
	                      <input class="form-control form-control-sm" type="text" placeholder="Type a comment">
	                    </div>
                    </c:forEach>
                    <!-- /.post -->
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.nav-tabs-custom -->
          </div>
          <div class = "col-md-3">
          	<div class="card">
	              <div class="card-header p-2">
	                <ul class="nav nav-pills">
	                  <li class="nav-item"><a class="nav-link" href="#members" data-toggle="tab">Members</a></li>
	                </ul>
	              </div><!-- /.card-header -->
	              <div class="card-body">
	                <div class="tab-content">
	                  <!-- /.tab-pane -->
	                  <div class="tab-pane active" id="members">
                        <div class="row" style="padding: 1%;">
							<div class="col-md-12">
								<c:forEach var="user" items="${groupInfoPageData.subscribers}">
                                   	<div class="row elevation-1" style="padding: 1%;">
										<div class="col-md-4">
											<img id="image image-profile-sidebar" style="padding=10%; width:70%;" src="${user.pictureLink}" class="img-circle elevation-2" alt="User Profile Image">
										</div>
										<div class="col-md-6">
                                          	  <a href="/home/user/profile/${user.id}">
                                              	<h4>${user.firstName} ${user.lastName}</h4>
                                          	  </a>
										</div>
									</div>
                               	</c:forEach>
							</div>
						</div>
                  		</div>
                  		<div class="tab-pane active" id="events">
                        <div class="row" style="padding: 1%;">
                            <div class="col-md-12">
                            </div>
                        </div>
                  		</div>
                 		</div>
              	</div>
     		   </div>
          </div>
          
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
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