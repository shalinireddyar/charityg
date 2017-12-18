<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>




<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/bootstrap.css" type="text/css	" rel="stylesheet" />

<link href="css/style.css" type="text/css" rel="stylesheet" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<% 
String name = request.getParameter("name"); 
// String description = request.getParameter("description");
// String link = request.getParameter("link");  
ResultSet resultSet = null;
Statement statement = null;
%>

<% 
try
{
	
Class.forName("org.postgresql.Driver");
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
		"postgres", "1234");
statement=con.createStatement();
String sql2 ="select * from t_charity";
resultSet = statement.executeQuery(sql2);


%>

<header>
	<div class="col-sm-6"><span class="logo-pading"><img src="img/iChange-Logo.png"></span></div>
	<div class="col-sm-6">
		<div class="logout-link">
			<a href="#"><span class="hello">Hello,</span><%=session.getAttribute("userid")%></a>
			<a href="Logout.jsp">Logout</a>
			
			
		</div>
	</div>

</header>
<nav class="navbar nav-bar-bg">
  
    
    <ul class="nav ">
       <li class="active"><a href="main-db.html">Dashboard</a></li>
    <li><a  href="users.html">Users</a></li>
    <li><a  href="trasactions.html">Trasactions</a></li>
    <li><a  href="charities.html">Charities</a></li>
    <li class="search-float"><form method="get" action="/search" id="search">
  <input name="q" type="text" size="40" placeholder="Search..." />
  <span class="search-icon"><img src="img/search icon.png"></span>
</form></li>
    </ul>
  
</nav>
<div class="dashboard-main">


  <div class="db-heading">
    <div  class="active">
      <h5>Dashboard</h5>
      <div class="db-section-1">
      	<div class="col-sm-3 border-line">
            <h2>$7,800</h2>
            <h3>Total Trasactions</h3>
            <h4>All Customs Value</h4>
      	</div>
      	<div class="col-sm-3 border-line">
            <h2>180</h2>
            <h3>New Users</h3>
            <h4>All Customs Value</h4>
      	</div>
      	<div class="col-sm-3 border-line">
            <h2>100</h2>
            <h3>Total Charities</h3>
            <h4>All Customs Value</h4>
      	</div>
      	<div class="col-sm-3 border-line">
            <h2>$1800</h2>
            <h3>New Profile</h3>
            <h4>All Customs Value</h4>
      	</div>

      </div>
      <div class="section-2">
      	<div class="col-sm-4">
      		<div class="user-box">
				<div class="user-line">
					<h2>New User</h2>
					<a href="#">View All </a>
      			</div>
      			<div class="user-sec">
      				<div class="col-sm-9 marg-lr">
      					<div class="floot"><img src="img/profile-img.png"></div>
      						<div class="floot"><h3>Anna Strong</h3>
      						<h4>London</h4>
      						</div>      				
      				</div>
      				<div class="col-sm-3 marg-lr floot-r"><button type="button" class="btn btn-default">More</button></div>
      			</div>
      			<div class="user-sec">
      				<div class="col-sm-9 marg-lr">
      					<div class="floot"><img src="img/profile-img.png"></div>
      						<div class="floot"><h3>Anna Strong</h3>
      						<h4>London</h4>
      						</div>      				
      				</div>
      				<div class="col-sm-3 marg-lr floot-r"><button type="button" class="btn btn-default">More</button></div>
      			</div>
      			<div class="user-sec">
      				<div class="col-sm-9 marg-lr">
      					<div class="floot"><img src="img/profile-img.png"></div>
      						<div class="floot"><h3>Anna Strong</h3>
      						<h4>London</h4>
      						</div>      				
      				</div>
      				<div class="col-sm-3 marg-lr floot-r"><button type="button" class="btn btn-default">More</button></div>
      			</div>
      			<div class="user-sec">
      				<div class="col-sm-9 marg-lr">
      					<div class="floot"><img src="img/profile-img.png"></div>
      						<div class="floot"><h3>Anna Strong</h3>
      						<h4>London</h4>
      						</div>      				
      				</div>
      				<div class="col-sm-3 marg-lr floot-r"><button type="button" class="btn btn-default">More</button></div>
      			</div>
      		</div>
      	</div>
      	<div class="col-sm-4">
      		<div class="user-box">
				<div class="user-line">
					<h2>Transactions Stats</h2>
					<a href="#">View All </a>
      			</div>
      				 <ul class="Transac-sec">
						<li class="date">Date</li>
						<li class="user">User</li>
						<li class="amount">Amount</li>
					 </ul>	
      			<div class="Transac-box">
      				<div class="col-sm-4 date">02-08-2017</div>
      				<div class="col-sm-4 user">Nike</div>
      				<div class="col-sm-4 amount">$45.45</div>
      			</div>
      			<div class="Transac-box">
      				<div class="col-sm-4 date">12-03-17</div>
      				<div class="col-sm-4 user">Wilter</div>
      				<div class="col-sm-4 amount">$5.45</div>
      			</div>
      			<div class="Transac-box">
      				<div class="col-sm-4 date">10-11-17</div>
      				<div class="col-sm-4 user">Nike</div>
      				<div class="col-sm-4 amount">$0.45</div>
      			</div>
      			<div class="Transac-box">
      				<div class="col-sm-4 date">05-09-17</div>
      				<div class="col-sm-4 user">Johan</div>
      				<div class="col-sm-4 amount">$8.85</div>
      			</div>
      			<div class="Transac-box">
      				<div class="col-sm-4 date">22-08-17</div>
      				<div class="col-sm-4 user">Nike</div>
      				<div class="col-sm-4 amount">$2.55</div>
      			</div>
      			<div class="Transac-box">
      				<div class="col-sm-4 date">05-09-17</div>
      				<div class="col-sm-4 user">Johan</div>
      				<div class="col-sm-4 amount">$1.45</div>
      			</div>
      	
      		</div>
      	</div>
      	<div class="col-sm-4">
      		<div class="user-box">
				<div class="user-line">
					<h2>Top Charities</h2>
					<a href="#">View All </a>
      			</div>
      			<div class="Transac-box-1">
      				<div class="col-sm-6 "><img src="img/aha-logo.png"></div>
      				
      				<div class="col-sm-6 amount">$1.45</div>
      			</div>
      				<div class="Transac-box-1">
	      				<div class="col-sm-6 "><img src="img/Mask-logo.png"></div>
	      				
	      				<div class="col-sm-6 amount">$6.35</div>
      				</div>
      			<div class="Transac-box-1">
	      				<div class="col-sm-6 "><img src="img/dwb-logo.png"></div>
	      				
	      				<div class="col-sm-6 amount">$7.20</div>
      				</div>
      			
      		</div>
      	</div>
      </div>

      <div class="trending">
      	

      	<div class="trending-text">
	
		<div class="col-sm-6 "><h2>Trending</h2></div>
			<div class="col-sm-6 footer-text-right">
				<a href="#">Start Process</a>
				<a href="#">Stop Process</a>
			
			</div>
		</div>
		<div class="process-box col-sm-12">
		<div class="process-header">
			<div class="process-bar">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">User </div>
				<div class="col-sm-3">Charities</div>
				<div class="col-sm-2">Amount</div>
				<div class="col-sm-2">Status</div>
				<div class="col-sm-2">Action</div>
			</div>
		</div>
		<div class="process-header-bar-1">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Anna Strong </div>
				<div class="col-sm-3">Stark, Kajcik and
Kohler</div>
				<div class="col-sm-2">$12</div>
				<div class="col-sm-2"><button class="process-ready-button"> Process Ready</button></div>
				<div class="col-sm-2"><a href="#">Start</a></div>
			</div>
			<div class="process-header-bar-2">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Milano Esceo </div>
				<div class="col-sm-3">Stoltenberg LLC</div>
				<div class="col-sm-2">$9</div>
				<div class="col-sm-2"><button class="in-process-button"> In Progress</button></div>
				<div class="col-sm-2"><a href="#"> Cancel</a></div>
			</div>
			<div class="process-header-bar-1">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Anna Strong </div>
				<div class="col-sm-3">Stark, Kajcik and
Kohler</div>
				<div class="col-sm-2">$12</div>
				<div class="col-sm-2"><button class="process-ready-button"> Process Ready</button></div>
				<div class="col-sm-2"><a href="#">Start</a></div>
			</div>
			<div class="process-header-bar-2">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Milano Esceo </div>
				<div class="col-sm-3">Stoltenberg LLC</div>
				<div class="col-sm-2">$9</div>
				<div class="col-sm-2"><button class="not-valid-button"> not valid</button></div>
				<div class="col-sm-2"><a href="#"> Cancel</a></div>
			</div>

			<div class="process-header-bar-1">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Anna Strong </div>
				<div class="col-sm-3">Stark, Kajcik and
Kohler</div>
				<div class="col-sm-2">$12</div>
				<div class="col-sm-2">Process Ready</div>
				<div class="col-sm-2">Start</div>
			</div>
			<div class="process-header-bar-2">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Milano Esceo </div>
				<div class="col-sm-3">Stoltenberg LLC</div>
				<div class="col-sm-2">$9</div>
				<div class="col-sm-2">In Progress</div>
				<div class="col-sm-2">Cancel</div>
			</div>
			<div class="process-header-bar-1">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Anna Strong </div>
				<div class="col-sm-3">Stark, Kajcik and
Kohler</div>
				<div class="col-sm-2">$12</div>
				<div class="col-sm-2">Process Ready</div>
				<div class="col-sm-2">Start</div>
			</div>
			<div class="process-header-bar-2">
				<div class="col-sm-1">
					<form action="">
					<input type="checkbox" name="vehicle" value="Bike">
					</form>
				</div>
				<div class="col-sm-2">Milano Esceo </div>
				<div class="col-sm-3">Stoltenberg LLC</div>
				<div class="col-sm-2">$9</div>
				<div class="col-sm-2">In Progress</div>
				<div class="col-sm-2">Cancel</div>
			</div>
		</div>
	</div>
	
	
	<div class="trending charities">
      	

      	<div class="trending-text">
	
		<div class="col-sm-6 "><h2>Trending</h2></div>
			<div class="col-sm-6 footer-text-right">
				<a href="Insert.jsp"><h3>Add Charity</h3></a>
			
			</div>
		</div>
		<div class="process-box col-sm-12">
		<div class="process-header">
			<div class="process-bar">
				
				<div class="col-sm-3">Name </div>
				<div class="col-sm-4">Description</div>
				<div class="col-sm-3">Link</div>
				<div class="col-sm-2">Action</div>
			</div>
		</div>
		
		<% 
while(resultSet.next()){
%>
<div class="process-header-bar-1">
				
				<div class="col-sm-3"><%=resultSet.getString("c_name") %></div>
				<div class="col-sm-4"><%=resultSet.getString("c_description") %></div>
				<div class="col-sm-3"><%=resultSet.getString("c_url") %></div>
				<div class="col-sm-2"><a href="Updateselected.jsp?name=<%=resultSet.getString("c_name")%>" class="process-ready-button"> Edit</a> <a href="Delete.jsp?name=<%=resultSet.getString("c_name")%>" class="process-ready-button"> Delete</a></div>

			</div>
			
			
<% }

con.close();}
 catch (Exception e) {
e.printStackTrace();

}
%>
			
			
		</div>
	</div>
	
      </div>
    </div>
  </div>
</div>

<div class="footer-bg">
  
    <div class="col-sm-6 "><span class="footer-text">2017@ Metronic theme by</span> <a href="#"> Keenthemes</a></div>
    <div class="col-sm-6 footer-text-right">
      <a href="#">About</a>
      <a href="#">Privacy</a>
      <a href="#">T&C</a>
      <a href="#">Puchase</a>
    </div>
</body>

</html>

