<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<% 
String name = request.getParameter("c_name");    
try
{

Class.forName("org.postgresql.Driver");}
catch (ClassNotFoundException e) {
e.printStackTrace();
}

ResultSet resultSet = null;
Statement statement = null;

%><% 
try{	
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
		"postgres", "1234");
statement=con.createStatement();
//String sql3 ="select * from t_charity where c_name=" +name ;
String sql3 ="select * from t_charity ";

resultSet = statement.executeQuery(sql3);

while(resultSet.next()){
%>
<html>
<body>

<form method="post" action="Update.jsp">
<input type="hidden" name="name" value="<%=resultSet.getString("c_name") %>">
<br>
Name
<input type="text" name="name" value="<%=resultSet.getString("c_name") %>">

Description
<input type="text" name="description" value="<%=resultSet.getString("c_description") %>">
<br>
Link
<input type="text" name="link" value="<%=resultSet.getString("c_url") %>">
<br>

<input type="submit" value="submit"></form>
<a href="Logout.jsp">Logout</a>
<a href="Action.jsp">Back</a>
<%}
con.close();}

 catch (Exception e) {
e.printStackTrace();

}
%>


</body>
</html>