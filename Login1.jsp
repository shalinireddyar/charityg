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

    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    try
    {
    	
    Class.forName("org.postgresql.Driver");
   
    Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ichangelocal",
			"postgres", "1234");
  
    Statement st = con.createStatement();
    ResultSet rs;
	
    rs = st.executeQuery("select * from t_user where c_name='" + userid + "' and c_password='" + pwd + "'");
   
    if (rs.next()) {
    	
        session.setAttribute("userid", userid);
       // out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        
        response.sendRedirect("Success1.jsp");
    } else {
        out.println("Invalid Username or password <a href='Logs1.jsp'>try again</a>");
    }
} catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>