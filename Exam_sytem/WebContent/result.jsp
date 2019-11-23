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
        <a class="navbar-brand" href="#"><img src="logo.png" height="40" width="40" alt="">CET,
            Bhubaneswar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <!-- nav end -->

    <!-- heading -->
    <div class="heading">
        <h2 class="display-4 text-center">
            Thank You <span class="float-right bg-white text-danger rounded-pill">
                <h3>&nbsp; Exam is Over&nbsp;</h3>
            </span>
        </h2>
    </div>
    <!-- heading -->
    <br><br>
    <div class="container border shadow-none p-3 mb-5 bg-light rounded">
        <div class="col-sm">
            <div class="text-center h1">Result</div><br><br>

            <table class="table table-striped table-dark text-center">
                <tbody>
                    <tr>
                        <td>No. of Ques Attempted</td>
                        <td><% out.print(request.getParameter("attm")); %></td>
                    </tr>
                    <tr>
                        <td>No. of Correct Answers</td>
                        <td><% out.print(request.getParameter("corr")); %></td>
                    </tr>
                    <tr>
                        <td>No. of Incorrect Answers</td>
                        <td><% out.print(request.getParameter("incorr")); %></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>
    </div>

    <div class="clearfix container text-center">
        <button type="button" class="btn btn-lg btn-danger" style="width: 30%;" onclick="window.location.href = 'index.jsp?msg=Exam is Over';"> Exit </button>
    </div>

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