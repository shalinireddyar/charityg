<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="Logs1.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>


<%-- <% out.println(" <a href='Charity.jsp'>Charity</a>");%>
<% out.println(" <a href='Insert.jsp'>Insert</a>");%>
<% out.println(" <a href='Updategetting.jsp'>Update</a>");%>
<% out.println(" <a href='Delete.jsp'>Deletes</a>");%>
<% out.println(" <a href='Action.jsp'>Action</a>");%> --%>
<%  response.sendRedirect("Action.jsp");%>

<a href='Logout.jsp'>Log out</a>

<%} %>
</body>
</html>