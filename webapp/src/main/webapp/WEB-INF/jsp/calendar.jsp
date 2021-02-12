<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="X-UA-Compatible" content="IE=edge">
<title>My Calendar</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/plugins/fontawesome-free/css/all.min.css" />">
  <!-- Ionicons -->
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/css/adminlte.css" />">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="/plugins/fullcalendar/main.min.css">
  <link rel="stylesheet" href="/plugins/fullcalendar-daygrid/main.min.css">
  <link rel="stylesheet" href="/plugins/fullcalendar-timegrid/main.min.css">
  <link rel="stylesheet" href="/plugins/fullcalendar-bootstrap/main.min.css">
  <!-- Theme style -->
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
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

    <!-- Sidebar Menu -->
       <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="<c:url value="/home/${user.id}" />" class="nav-link">
			  <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/user/calendar/${user.id}" />" class="nav-link">
			  <i class="nav-icon fas fa-calendar"></i>
              <p>
                Calendar
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/user/profile/${user.id}" />" class="nav-link">
			  <i class="nav-icon fas fa-user-circle"></i>
              <p>
                Profile
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/home/user/address/book/${user.id}" />" class="nav-link">
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


<div class="content-wrapper" style="min-height: 1074px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Calendar</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Calendar</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="sticky-top mb-3">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Draggable Events</h4>
                </div>
                <div class="card-body">
                  <!-- the events -->
                  <div id="external-events">
                    <div class="external-event bg-success ui-draggable ui-draggable-handle" style="position: relative; z-index: auto; left: 0px; top: 0px;">Lunch</div>
                    <div class="external-event bg-warning ui-draggable ui-draggable-handle" style="position: relative;">Go home</div>
                    <div class="external-event bg-info ui-draggable ui-draggable-handle" style="position: relative;">Do homework</div>
                    <div class="external-event bg-primary ui-draggable ui-draggable-handle" style="position: relative;">Work on UI design</div>
                    <div class="external-event bg-danger ui-draggable ui-draggable-handle" style="position: relative;">Sleep tight</div>
                    <div class="checkbox">
                      <label for="drop-remove">
                        <input type="checkbox" id="drop-remove">
                        remove after drop
                      </label>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Create Event</h3>
                </div>
                <div class="card-body">
                  <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                    <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                    <ul class="fc-color-picker" id="color-chooser">
                      <li><a class="text-primary" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-warning" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-success" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-danger" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-muted" href="#"><i class="fas fa-square"></i></a></li>
                    </ul>
                  </div>
                  <!-- /btn-group -->
                  <div class="input-group">
                    <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                    <div class="input-group-append">
                      <button id="add-new-event" type="button" class="btn btn-primary">Add</button>
                    </div>
                    <!-- /btn-group -->
                  </div>
                  <!-- /input-group -->
                </div>
              </div>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
                <div id="calendar" class="fc fc-ltr fc-bootstrap" style=""><div class="fc-toolbar fc-header-toolbar"><div class="fc-left"><div class="btn-group"><button type="button" class="fc-prev-button btn btn-primary" aria-label="prev"><span class="fa fa-chevron-left"></span></button><button type="button" class="fc-next-button btn btn-primary" aria-label="next"><span class="fa fa-chevron-right"></span></button></div><button type="button" class="fc-today-button btn btn-primary" disabled="">today</button></div><div class="fc-center"><h2>February 2021</h2></div><div class="fc-right"><div class="btn-group"><button type="button" class="fc-dayGridMonth-button btn btn-primary active">month</button><button type="button" class="fc-timeGridWeek-button btn btn-primary">week</button><button type="button" class="fc-timeGridDay-button btn btn-primary">day</button></div></div></div><div class="fc-view-container"><div class="fc-view fc-dayGridMonth-view fc-dayGrid-view" style=""><table class="table-bordered"><thead class="fc-head"><tr><td class="fc-head-container "><div class="fc-row table-bordered"><table class="table-bordered"><thead><tr><th class="fc-day-header  fc-sun"><span>Sun</span></th><th class="fc-day-header  fc-mon"><span>Mon</span></th><th class="fc-day-header  fc-tue"><span>Tue</span></th><th class="fc-day-header  fc-wed"><span>Wed</span></th><th class="fc-day-header  fc-thu"><span>Thu</span></th><th class="fc-day-header  fc-fri"><span>Fri</span></th><th class="fc-day-header  fc-sat"><span>Sat</span></th></tr></thead></table></div></td></tr></thead><tbody class="fc-body"><tr><td class=""><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 433.4px;"><div class="fc-day-grid"><div class="fc-row fc-week table-bordered" style="height: 70px;"><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-other-month fc-past" data-date="2021-01-31"></td><td class="fc-day  fc-mon fc-past" data-date="2021-02-01"></td><td class="fc-day  fc-tue fc-past" data-date="2021-02-02"></td><td class="fc-day  fc-wed fc-past" data-date="2021-02-03"></td><td class="fc-day  fc-thu fc-past" data-date="2021-02-04"></td><td class="fc-day  fc-fri fc-past" data-date="2021-02-05"></td><td class="fc-day  fc-sat fc-past" data-date="2021-02-06"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2021-01-31"><span class="fc-day-number">31</span></td><td class="fc-day-top fc-mon fc-past" data-date="2021-02-01"><span class="fc-day-number">1</span></td><td class="fc-day-top fc-tue fc-past" data-date="2021-02-02"><span class="fc-day-number">2</span></td><td class="fc-day-top fc-wed fc-past" data-date="2021-02-03"><span class="fc-day-number">3</span></td><td class="fc-day-top fc-thu fc-past" data-date="2021-02-04"><span class="fc-day-number">4</span></td><td class="fc-day-top fc-fri fc-past" data-date="2021-02-05"><span class="fc-day-number">5</span></td><td class="fc-day-top fc-sat fc-past" data-date="2021-02-06"><span class="fc-day-number">6</span></td></tr></thead><tbody><tr><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable" style="background-color:#f56954;border-color:#f56954"><div class="fc-content"> <span class="fc-title">All Day Event</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week table-bordered" style=""><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-past" data-date="2021-02-07"></td><td class="fc-day  fc-mon fc-past" data-date="2021-02-08"></td><td class="fc-day  fc-tue fc-past" data-date="2021-02-09"></td><td class="fc-day  fc-wed fc-past" data-date="2021-02-10"></td><td class="fc-day  fc-thu fc-past" data-date="2021-02-11"></td><td class="fc-day  fc-fri fc-today alert alert-info" data-date="2021-02-12"></td><td class="fc-day  fc-sat fc-future" data-date="2021-02-13"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2021-02-07"><span class="fc-day-number">7</span></td><td class="fc-day-top fc-mon fc-past" data-date="2021-02-08"><span class="fc-day-number">8</span></td><td class="fc-day-top fc-tue fc-past" data-date="2021-02-09"><span class="fc-day-number">9</span></td><td class="fc-day-top fc-wed fc-past" data-date="2021-02-10"><span class="fc-day-number">10</span></td><td class="fc-day-top fc-thu fc-past" data-date="2021-02-11"><span class="fc-day-number">11</span></td><td class="fc-day-top fc-fri fc-today alert alert-info" data-date="2021-02-12"><span class="fc-day-number">12</span></td><td class="fc-day-top fc-sat fc-future" data-date="2021-02-13"><span class="fc-day-number">13</span></td></tr></thead><tbody><tr><td class="fc-event-container" colspan="3"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#f39c12;border-color:#f39c12"><div class="fc-content"><span class="fc-time">12a</span> <span class="fc-title">Long Event</span></div></a></td><td rowspan="2"></td><td rowspan="2"></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#0073b7;border-color:#0073b7"><div class="fc-content"><span class="fc-time">10:30a</span> <span class="fc-title">Meeting</span></div></a></td><td class="fc-event-container" rowspan="2"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#00a65a;border-color:#00a65a"><div class="fc-content"><span class="fc-time">7p</span> <span class="fc-title">Birthday Party</span></div></a></td></tr><tr><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#00c0ef;border-color:#00c0ef"><div class="fc-content"><span class="fc-time">12p</span> <span class="fc-title">Lunch</span></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week table-bordered" style="height: 70px;"><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-future" data-date="2021-02-14"></td><td class="fc-day  fc-mon fc-future" data-date="2021-02-15"></td><td class="fc-day  fc-tue fc-future" data-date="2021-02-16"></td><td class="fc-day  fc-wed fc-future" data-date="2021-02-17"></td><td class="fc-day  fc-thu fc-future" data-date="2021-02-18"></td><td class="fc-day  fc-fri fc-future" data-date="2021-02-19"></td><td class="fc-day  fc-sat fc-future" data-date="2021-02-20"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2021-02-14"><span class="fc-day-number">14</span></td><td class="fc-day-top fc-mon fc-future" data-date="2021-02-15"><span class="fc-day-number">15</span></td><td class="fc-day-top fc-tue fc-future" data-date="2021-02-16"><span class="fc-day-number">16</span></td><td class="fc-day-top fc-wed fc-future" data-date="2021-02-17"><span class="fc-day-number">17</span></td><td class="fc-day-top fc-thu fc-future" data-date="2021-02-18"><span class="fc-day-number">18</span></td><td class="fc-day-top fc-fri fc-future" data-date="2021-02-19"><span class="fc-day-number">19</span></td><td class="fc-day-top fc-sat fc-future" data-date="2021-02-20"><span class="fc-day-number">20</span></td></tr></thead><tbody><tr><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable" style="background-color:rgb(40, 167, 69);border-color:rgb(40, 167, 69);color:rgb(255, 255, 255)"><div class="fc-content"> <span class="fc-title">Lunch</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week table-bordered" style="height: 70px;"><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-future" data-date="2021-02-21"></td><td class="fc-day  fc-mon fc-future" data-date="2021-02-22"></td><td class="fc-day  fc-tue fc-future" data-date="2021-02-23"></td><td class="fc-day  fc-wed fc-future" data-date="2021-02-24"></td><td class="fc-day  fc-thu fc-future" data-date="2021-02-25"></td><td class="fc-day  fc-fri fc-future" data-date="2021-02-26"></td><td class="fc-day  fc-sat fc-future" data-date="2021-02-27"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2021-02-21"><span class="fc-day-number">21</span></td><td class="fc-day-top fc-mon fc-future" data-date="2021-02-22"><span class="fc-day-number">22</span></td><td class="fc-day-top fc-tue fc-future" data-date="2021-02-23"><span class="fc-day-number">23</span></td><td class="fc-day-top fc-wed fc-future" data-date="2021-02-24"><span class="fc-day-number">24</span></td><td class="fc-day-top fc-thu fc-future" data-date="2021-02-25"><span class="fc-day-number">25</span></td><td class="fc-day-top fc-fri fc-future" data-date="2021-02-26"><span class="fc-day-number">26</span></td><td class="fc-day-top fc-sat fc-future" data-date="2021-02-27"><span class="fc-day-number">27</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week table-bordered" style="height: 70px;"><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-future" data-date="2021-02-28"></td><td class="fc-day  fc-mon fc-other-month fc-future" data-date="2021-03-01"></td><td class="fc-day  fc-tue fc-other-month fc-future" data-date="2021-03-02"></td><td class="fc-day  fc-wed fc-other-month fc-future" data-date="2021-03-03"></td><td class="fc-day  fc-thu fc-other-month fc-future" data-date="2021-03-04"></td><td class="fc-day  fc-fri fc-other-month fc-future" data-date="2021-03-05"></td><td class="fc-day  fc-sat fc-other-month fc-future" data-date="2021-03-06"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-future" data-date="2021-02-28"><span class="fc-day-number">28</span></td><td class="fc-day-top fc-mon fc-other-month fc-future" data-date="2021-03-01"><span class="fc-day-number">1</span></td><td class="fc-day-top fc-tue fc-other-month fc-future" data-date="2021-03-02"><span class="fc-day-number">2</span></td><td class="fc-day-top fc-wed fc-other-month fc-future" data-date="2021-03-03"><span class="fc-day-number">3</span></td><td class="fc-day-top fc-thu fc-other-month fc-future" data-date="2021-03-04"><span class="fc-day-number">4</span></td><td class="fc-day-top fc-fri fc-other-month fc-future" data-date="2021-03-05"><span class="fc-day-number">5</span></td><td class="fc-day-top fc-sat fc-other-month fc-future" data-date="2021-03-06"><span class="fc-day-number">6</span></td></tr></thead><tbody><tr><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" href="http://google.com/" style="background-color:#3c8dbc;border-color:#3c8dbc"><div class="fc-content"><span class="fc-time">12a</span> <span class="fc-title">Click for Google</span></div></a></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week table-bordered" style="height: 72px;"><div class="fc-bg"><table class="table-bordered"><tbody><tr><td class="fc-day  fc-sun fc-other-month fc-future" data-date="2021-03-07"></td><td class="fc-day  fc-mon fc-other-month fc-future" data-date="2021-03-08"></td><td class="fc-day  fc-tue fc-other-month fc-future" data-date="2021-03-09"></td><td class="fc-day  fc-wed fc-other-month fc-future" data-date="2021-03-10"></td><td class="fc-day  fc-thu fc-other-month fc-future" data-date="2021-03-11"></td><td class="fc-day  fc-fri fc-other-month fc-future" data-date="2021-03-12"></td><td class="fc-day  fc-sat fc-other-month fc-future" data-date="2021-03-13"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-future" data-date="2021-03-07"><span class="fc-day-number">7</span></td><td class="fc-day-top fc-mon fc-other-month fc-future" data-date="2021-03-08"><span class="fc-day-number">8</span></td><td class="fc-day-top fc-tue fc-other-month fc-future" data-date="2021-03-09"><span class="fc-day-number">9</span></td><td class="fc-day-top fc-wed fc-other-month fc-future" data-date="2021-03-10"><span class="fc-day-number">10</span></td><td class="fc-day-top fc-thu fc-other-month fc-future" data-date="2021-03-11"><span class="fc-day-number">11</span></td><td class="fc-day-top fc-fri fc-other-month fc-future" data-date="2021-03-12"><span class="fc-day-number">12</span></td><td class="fc-day-top fc-sat fc-other-month fc-future" data-date="2021-03-13"><span class="fc-day-number">13</span></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<!-- ./wrapper -->
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
	<script src="<c:url value="/plugins/jquery-ui/jquery-ui.min.js"/>"></script>
	
	<!-- calendar plugins -->
	<script src="<c:url value="/plugins/moment/moment.min.js" />"></script>
	<script src="<c:url value="/plugins/fullcalendar/main.min.js" />"></script>
	<script src="<c:url value="/plugins/fullcalendar-daygrid/main.min.js" />"></script>
	<script src="<c:url value="/plugins/fullcalendar-timegrid/main.min.js" />"></script>
	<script src="<c:url value="/plugins/fullcalendar-interaction/main.min.js" />"></script>
	<script src="<c:url value="/plugins/fullcalendar-bootstrap/main.min.js" />"></script>
	
	<script>
	  $(function () {
	
	    /* initialize the external events
	     -----------------------------------------------------------------*/
	    function ini_events(ele) {
	      ele.each(function () {
	
	        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
	        // it doesn't need to have a start or end
	        var eventObject = {
	          title: $.trim($(this).text()) // use the element's text as the event title
	        }
	
	        // store the Event Object in the DOM element so we can get to it later
	        $(this).data('eventObject', eventObject)
	
	        // make the event draggable using jQuery UI
	        $(this).draggable({
	          zIndex        : 1070,
	          revert        : true, // will cause the event to go back to its
	          revertDuration: 0  //  original position after the drag
	        })
	
	      })
	    }
	
	    ini_events($('#external-events div.external-event'))
	
	    /* initialize the calendar
	     -----------------------------------------------------------------*/
	    //Date for the calendar events (dummy data)
	    var date = new Date()
	    var d    = date.getDate(),
	        m    = date.getMonth(),
	        y    = date.getFullYear()
	
	    var Calendar = FullCalendar.Calendar;
	    var Draggable = FullCalendarInteraction.Draggable;
	
	    var containerEl = document.getElementById('external-events');
	    var checkbox = document.getElementById('drop-remove');
	    var calendarEl = document.getElementById('calendar');
	
	    // initialize the external events
	    // -----------------------------------------------------------------
	
	    new Draggable(containerEl, {
	      itemSelector: '.external-event',
	      eventData: function(eventEl) {
	        console.log(eventEl);
	        return {
	          title: eventEl.innerText,
	          backgroundColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
	          borderColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
	          textColor: window.getComputedStyle( eventEl ,null).getPropertyValue('color'),
	        };
	      }
	    });
	
	    var calendar = new Calendar(calendarEl, {
	      plugins: [ 'bootstrap', 'interaction', 'dayGrid', 'timeGrid' ],
	      header    : {
	        left  : 'prev,next today',
	        center: 'title',
	        right : 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      'themeSystem': 'bootstrap',
	      //Random default events
	      events    : [
	        {
	          title          : 'All Day Event',
	          start          : new Date(y, m, 1),
	          backgroundColor: '#f56954', //red
	          borderColor    : '#f56954', //red
	          allDay         : true
	        },
	        {
	          title          : 'Long Event',
	          start          : new Date(y, m, d - 5),
	          end            : new Date(y, m, d - 2),
	          backgroundColor: '#f39c12', //yellow
	          borderColor    : '#f39c12' //yellow
	        },
	        {
	          title          : 'Meeting',
	          start          : new Date(y, m, d, 10, 30),
	          allDay         : false,
	          backgroundColor: '#0073b7', //Blue
	          borderColor    : '#0073b7' //Blue
	        },
	        {
	          title          : 'Lunch',
	          start          : new Date(y, m, d, 12, 0),
	          end            : new Date(y, m, d, 14, 0),
	          allDay         : false,
	          backgroundColor: '#00c0ef', //Info (aqua)
	          borderColor    : '#00c0ef' //Info (aqua)
	        },
	        {
	          title          : 'Birthday Party',
	          start          : new Date(y, m, d + 1, 19, 0),
	          end            : new Date(y, m, d + 1, 22, 30),
	          allDay         : false,
	          backgroundColor: '#00a65a', //Success (green)
	          borderColor    : '#00a65a' //Success (green)
	        },
	        {
	          title          : 'Click for Google',
	          start          : new Date(y, m, 28),
	          end            : new Date(y, m, 29),
	          url            : 'http://google.com/',
	          backgroundColor: '#3c8dbc', //Primary (light-blue)
	          borderColor    : '#3c8dbc' //Primary (light-blue)
	        }
	      ],
	      editable  : true,
	      droppable : true, // this allows things to be dropped onto the calendar !!!
	      drop      : function(info) {
	        // is the "remove after drop" checkbox checked?
	        if (checkbox.checked) {
	          // if so, remove the element from the "Draggable Events" list
	          info.draggedEl.parentNode.removeChild(info.draggedEl);
	        }
	      }    
	    });
	
	    calendar.render();
	    // $('#calendar').fullCalendar()
	
	    /* ADDING EVENTS */
	    var currColor = '#3c8dbc' //Red by default
	    //Color chooser button
	    var colorChooser = $('#color-chooser-btn')
	    $('#color-chooser > li > a').click(function (e) {
	      e.preventDefault()
	      //Save color
	      currColor = $(this).css('color')
	      //Add color effect to button
	      $('#add-new-event').css({
	        'background-color': currColor,
	        'border-color'    : currColor
	      })
	    })
	    $('#add-new-event').click(function (e) {
	      e.preventDefault()
	      //Get value and make sure it is not null
	      var val = $('#new-event').val()
	      if (val.length == 0) {
	        return
	      }
	
	      //Create events
	      var event = $('<div />')
	      event.css({
	        'background-color': currColor,
	        'border-color'    : currColor,
	        'color'           : '#fff'
	      }).addClass('external-event')
	      event.html(val)
	      $('#external-events').prepend(event)
	
	      //Add draggable funtionality
	      ini_events(event)
	
	      //Remove event from text input
	      $('#new-event').val('')
	    })
	  })
	</script>

</body>
</html>