<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign-In page</title>
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
    .form-control {
		font-size: 16px;
	}
    .form-control, .btn {
        border-radius: 50px;
		outline: none !important;
    }
	.login-form {
		width: 400px;
    	margin: 0 auto;
		padding: 30px 0;
	}
    .login-form form {
		border-radius: 5px;
    	margin-bottom: 20px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 40px 50px;
    }
    .login-form .btn {        
        font-size: 18px;
		line-height: 26px;
        font-weight: bold;
		text-align: center;
    }
      .login-form a {
		color: #5cb85c;
	}
	</style>
</head>
  <body>
    <div class="login-form">
      <form:form action="/login" method="post">		
        <div class="form-group">
        	<input type="text" class="form-control input-lg" name="username" placeholder="Username" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control input-lg" name="password" placeholder="Password" required="required">
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block login-btn">Sign in</button>
        </div>
      </form:form>
      <div class="text-center"><span class="text-muted">Don't have an account?</span> <a href="/signup">Sign up here</a></div>
    </div>
  </body>
</html>