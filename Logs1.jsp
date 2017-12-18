<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <!DOCTYPE html>
<html >
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />

<!-- css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	
	<form method="post" action="Login1.jsp">
	<div class="login-box">
		<div>
			<div class="col-sm-8">
				<h1>Sign in</h1>
				<h4>to continue to iChange</h4>
			</div>
			<div class="col-sm-4">
				<div class="logo-1"><img src="img/logo-1.png"></div>
			</div>
		</div>

	<div class="input-sec">
  <label >Name:</label>
  <input type="text" class="form-control"  name="username" required>
</div>
<div class="input-sec">
  <label >Password:</label>
  <input type="password" name="password" required class="form-control" >
</div>

<div class="foget-likn">
	<div class="col-sm-6"><a href="#">Forgot email</a></div>
	<div class="col-sm-6 button-login">
	<button type="submit" class="btn btn-primary">Login</button></div>
</div>

</div>
</form>
</body>
</html>