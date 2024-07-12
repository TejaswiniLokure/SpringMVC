<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help page</title>
</head>
<body>
	<!-- <h1>Hello my name is Tejaswini</h1> -->
	<%-- <%
	String name = (String) request.getAttribute("name");
	Integer integer = (Integer) request.getAttribute("rollnumber");
	LocalDateTime dateTime=(LocalDateTime)request.getAttribute("time");
	
	%> --%>
	<h1>
		Name is
		<%-- <%=name%> --%>
		${name}
	</h1>
	<h1> Roll number  is 
	
	<%-- <%=integer%>  --%>
	${rollnumber}
	</h1>
	<h1> Date and time is
	<%--  <%=dateTime.toString()%> --%>
	${time}
	 </h1>
	 <hr>
	 ${marks }
	 
</body>
</html>