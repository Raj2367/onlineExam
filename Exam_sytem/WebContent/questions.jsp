<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! int timer=10; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Timer: <%= timer %></h1>
	<h1>All the questions will be here</h1>
	<%
		if(timer>0)
		{
			--timer;
			response.setHeader("Refresh", "1");
			return;
		}
		else{
	
			response.sendRedirect("result.jsp");
		}
	%>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	
</body>
</html>