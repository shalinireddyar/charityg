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

 <% 
String name = request.getParameter("name"); 
String description = request.getParameter("description");
String link = request.getParameter("link");    

 try {
			Class.forName("org.postgresql.Driver");
			Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
					"postgres", "1234");
			String sql = "UPDATE t_charity SET c_name=?, c_description=?,c_url=? where c_name=?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, name);
			statement.setString(2, description);
			statement.setString(3, link);
			statement.setString(4, name);

			
			 
			int rowsUpdated = statement.executeUpdate();
			if (rowsUpdated > 0) {
			    out.println("An existing user was updated successfully!");%>
			    <a href="Logout.jsp">Logout</a>
			     <a href="Action.jsp">Back</a>
		<%	}
			else
			{
			out.print("There is a problem in updating Record.");%>
			<a href="Action.jsp">Back</a>
		<% 	}
 
            
			
		} catch (Exception e) {
			e.printStackTrace();
			}
		
 
 
 %>
</FORM>
</body>
</html>