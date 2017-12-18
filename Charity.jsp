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
<h1>Names of Charities</h1>
<% try {
	
		    Class.forName("org.postgresql.Driver");
			 Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/charity",
						"postgres", "1234");
		
			Statement st= con.createStatement();
			String sql = "SELECT * from charity_details";
		
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
			out.println( rs.getString("name"));
		 //System.out.println( rs.getString("c_name")); 
			
		 	}%>
		 	<a href='Logout.jsp'>Log out</a>
		 	 <a href='Success1.jsp'>Back</a>
			<% st.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();}%>
</body>
</html>