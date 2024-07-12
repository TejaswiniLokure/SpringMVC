<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<h4>Welcome to Home page</h4>
<% 

 String name=(String)request.getAttribute("name");
 Integer id=(Integer)request.getAttribute("id");
 List<String> friends=(List<String>) request.getAttribute("f");
%>
<h1>
Name is 
<%=name%></h1>
<h1>
Id is 
<%=id%></h1>
<%-- <%
for(String s:friends)
{
out.println(s);
}
%> --%>
<% 
for(String s:friends){
%>
<h1>s</h1>
<%
}
%>
</body>
</html>