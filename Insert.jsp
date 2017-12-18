<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <FORM action="Insert.jsp" method="get">
<table>
<tr><td>id:</td><td><input type="text" name="id" required></td></tr>
<tr><td>Name:</td><td><input type="text" name="name" required></td></tr>
<tr><td>Description:</td><td><input type="text" name="description" required></td></tr> 
<tr><td>Link:</td><td><input type="text" name="link" required></td></tr>
<tr><td></td><td><input type="submit" value="Insert"></td></tr>

</table>

<% 
String id = request.getParameter("id"); 
    String name = request.getParameter("name");    
    String description = request.getParameter("description");
    String link = request.getParameter("link");    
  
   
    try
    {
    	
    Class.forName("org.postgresql.Driver");
    int updateQuery = 0;
   
    Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
			"postgres", "1234");
   // if(name!=null && city!=null && phone!=null){
		 // check if the text box having only blank spaces
    //if(name!="" && city!="" && phone!="") {
               
    
    
  //  Statement st= con.createStatement();
	String sql1 = "INSERT INTO t_charity( c_id,c_name, c_description, c_url) values(?,?,?,?)";
    
	PreparedStatement statement = con.prepareStatement(sql1);
	statement.setString(1, id);
	statement.setString(2, name);
	statement.setString(3, description);
	statement.setString(4, link);
	 
	/* int rowsInserted = statement.executeUpdate();
	if (rowsInserted > 0) {
	    out.println("A new user was inserted successfully!");
	}
	
	
	
	
	
	 
	int rowsUpdated = statement.executeUpdate();
	if (rowsUpdated > 0) {
	    out.println("An existing user was updated successfully!");
	}
	else
	{
	out.print("There is a problem in updating Record.");
	}

	
	 */
	 updateQuery = statement.executeUpdate();%>
	  New Charity was inserted successfully<br>
	 <a href='Logout.jsp'>Log out</a><br>
	  <a href='Success1.jsp'>Back</a>
	 
<!--    /*   if (updateQuery >0) {  -->

<!--     	 out.println("A new user was inserted successfully!"); -->
<!-- } -->
<!--  */ -->
  <% 
  
  statement.close();
	con.close();
} catch (Exception e) {
	e.printStackTrace();

}
%>
</FORM>
</body>
</html>