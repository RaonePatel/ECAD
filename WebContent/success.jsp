
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
	<td>Enrollment No</td>
	<td>Branch</td>
	<td>Feeback</td>
</tr>


<%

Connection cn = DriverManager.getConnection("jdbc:mysql://au-cdbr-sl-syd-01.cleardb.net/ibmx_e7ac91e1130bfb7?user=b03b5c5fcc8e73&password=000b80d0");
Statement st = cn.createStatement();
String query = "select enroll,branch,feedback from feedback limit 5";
ResultSet rs = st.executeQuery(query);

while(rs.next())
{
	%>
	<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
	</tr>
			
	<%
}
%>

</table>
</body>
</html>