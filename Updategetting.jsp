<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
String name = request.getParameter("name"); 
// String description = request.getParameter("description");
// String link = request.getParameter("link");  
ResultSet resultSet = null;
Statement statement = null;



%>
		<table border="1">
<tr>

<td><b>Name</b></td>
<td><b>Description</b></td>
<td><b>Link</b></td>
<td><b>Action</b></td>


</tr>
<% 
try
{
	
Class.forName("org.postgresql.Driver");
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
		"postgres", "1234");
statement=con.createStatement();
String sql2 ="select * from t_charity";
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("c_name") %></td>
<td><%=resultSet.getString("c_description") %></td>
<td><%=resultSet.getString("c_url") %></td>

<td><a href="Updateselected.jsp?name=<%=resultSet.getString("c_name")%>">update</a></td>
</tr>

<% }

con.close();}
 catch (Exception e) {
e.printStackTrace();

}
%>
</table>

</body>
</html>