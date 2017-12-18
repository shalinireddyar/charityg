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
try {
			Class.forName("org.postgresql.Driver");
			Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
					"postgres", "1234");
			Statement st= con.createStatement();
			String sql = "DELETE FROM t_charity WHERE c_name=?";
			 
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, name);
			int rowsDeleted = statement.executeUpdate();
			%>
		
			<%response.sendRedirect("Action.jsp");
			/*  if (rowsDeleted > 0) {
		    out.println("A charity was deleted successfully!");		   }  */
		   
			 st.close();
			con.close();
		
            
            } catch (Exception e) {
			e.printStackTrace();

		}
%>

</body>
</html>