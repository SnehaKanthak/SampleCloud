<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		if (session != null) {
			if (session.getAttribute("user") != null) {
				String userName = (String) session.getAttribute("user");
				out.print("Welcome, " + userName);
			} else {
				response.sendRedirect("Login.jsp");
			}
		}
	%>
</body>
</html>