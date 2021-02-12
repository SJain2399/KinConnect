<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register Page</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body {
		background: #dfe7e9;
		font-family: 'Roboto', sans-serif;
	}
	
	.error-message {
		font-size: 12px;
		font-color: red;
	}
    .form-control {
		font-size: 12px;
		transition: all 0.4s;
		box-shadow: none;
	}
	.form-control:focus {
        border-color: #5cb85c;
    }
    .form-control, .btn {
        border-radius: 50px;
		outline: none !important;
    }
	.signup-form {
		width: 400px;
    	margin: 0 auto;
		padding: 20px 0;
	}
    .signup-form form {
		border-radius: 5px;
    	margin-bottom: 10px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 20px;
    }
	.signup-form a {
		color: #5cb85c;
	}    
	.signup-form h2 {
		text-align: center;
		font-size: 24px;
		margin: 10px 0 15px;
	}
	.signup-form .hint-text {
		color: #999;
		font-size: 12px;
		text-align: center;
		margin-bottom: 10px;
	}
	.signup-form .form-group {
		margin-bottom: 10px;
	}
    .signup-form .btn {        
        font-size: 14px;
		line-height: 24px;
        font-weight: bold;
		text-align: center;
    }
	.signup-btn {
		text-align: center;
		border-color: #5cb85c;
		margin-top: 10px;
		transition: all 0.4s;
	}
	.signup-btn:hover {
		opacity: 0.8;
	}
	</style>
  </head>

  <body>
    
    <div class="signup-form">
      <form:form action="/public/signup" method="post" modelAttribute="user">
        <div class="form-group">
        	<form:input type="text" class="form-control input-lg" path="firstName" placeholder="First Name" required="required" />
        </div>
        <div class="form-group">
        	<form:input type="text" class="form-control input-lg" path="lastName" placeholder="Last Name" required="required" />
        </div>
		<div class="form-group">
        	<form:input type="email" class="form-control input-lg" path="email" placeholder="Email Address" required="required" />
        </div>
        <div class="form-group">
            <form:input type="text" class="form-control input-lg" path="contactNumber" placeholder="Contact Number" required="required" />
        </div>
		<div class="form-group">
            <form:input type="text" class="form-control input-lg" path="bio" placeholder="Bio"/>
        </div>
		<div class="form-group">
            <form:input type="date" class="form-control input-lg" name="birthDate" path="birthDate" placeholder="yyyy-mm-dd" required="required"/>
        </div>  
        <div class="form-group my-3">
            <button type="submit" class="btn btn-outline-primary btn-lg btn-block signup-btn">Sign Up</button>
        </div>
        
    </form:form>
    <div class="text-center my-0">Already have an account? <a href="/signin">Login here</a></div>
  </div>
  <!--
  <div class="signup-form">
  <form action="/sign-up" method="post" ">
  	<div class="modal-body">
  				<div class="form-group">
    				<label for="firstName">First Name</label>
    				<input  name="firstName" type="text" class="form-control"  placeholder="first name">
  				</div>
  				<div class="form-group">
    				<label for="lastName">Last Name</label>
    				<input  name="lastName" type="text" class="form-control"  placeholder="last name">
  				</div>
  				<div class="form-group">
    				<label for="email">Email</label>
    				<input  name="email" type="email" class="form-control"  placeholder="email">
  				</div>
  				<div class="form-group">
    				<label for="contactNumber">Contact Number</label>
    				<input  name="contactNumber" type="number" class="form-control"  placeholder=""contact number"">
  				</div>
  				<div class="form-group">
    				<label for="password">Password</label>
    				<input  name="password" type="text" class="form-control"  placeholder="password">
  				</div>
  				<div class="form-group">
    				<label for="confirmPassword">Confirm Password</label>
    				<input  name="confirmPassword" type="text" class="form-control"  placeholder="confirmPassword">
  				</div>
  			<div class="modal-footer">
              <button type="submit"  class="btn btn-success" value="submit">Submit</button>
            </div>
	</div>
</form>
 <div class="text-center my-0">Already have an account? <a href="/signin">Login here</a></div>
    </div>
-->
      <script>$( "#birthDate" ).datepicker({
    	    dateFormat : 'yyyy-mm-dd'
      });</script>
   
  </body>
</html>