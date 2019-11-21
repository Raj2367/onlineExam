
<%@page import="java.sql.*,exam.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome Student</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="login.css">
</head>

<body>
    <!-- nav start -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"><img src="logo.png" height="40" width="40" alt="">CET,Bhubaneswar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <!-- nav end -->

    <!-- heading -->
    <div class="heading">
        <h2 class="display-4 text-center">
            Welcome <%out.println(session.getAttribute("id")); %>
        </h2>
    </div>
    <!-- heading -->
    <br><br>
    <div class="container border shadow-none p-3 mb-5 bg-light rounded">
         <%
							ResultSet rs = ExamDAO.showInstruction();
							if (rs != null) 
							{
								try {
									ResultSetMetaData rsmd = rs.getMetaData();
									out.print("<table class='table table-striped'>");
									out.print("<thead><tr>");
									for (int j = 1; j <= rsmd.getColumnCount(); j++) 
									{
										out.print("<th>"+rsmd.getColumnName(j)+"</th>");
									}
									out.print("</tr></thead><tbody>");
									while (rs.next()) 
									{
										out.print("<tr>");
										for (int j = 1; j <= rsmd.getColumnCount(); j++) 
										{
											out.print("<td>"+rs.getString(j)+"</td>");
										}
										out.print("</tr>");
									}
									out.print("</tbody></table>");
								} 
								catch (SQLException e) 
								{
									out.print("<br>error in ShowComplain rs.next()");
									e.printStackTrace();
								}
							}
							else 
							{
								out.print("error...");
							}
					%>
    </div>
    <center>
        <button type="button" class="button" onclick="window.location.href = 'questions.jsp';">Start Test</button>
    </center>

    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>