<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <%-- Required meta tags --%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome to Exam</title>

    <%-- Bootstrap CSS --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="ind.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>

<body>
    <%-- nav start --%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"><img src="logo.png" height="40" width="40" alt="">CET, Bhubaneswar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <%-- nav end --%>
    
    <%-- heading --%>
    <div class="heading">
        <h2 class="display-4 text-center"><marquee behavior="" direction="">Welcome To College Of Engineering & Technology Examination</marquee></h2>
    </div>
    <%-- heading --%>

    <%-- slider --%>
    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="data:image/jpeg;base64,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"
                    alt="Los Angeles" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>Los Angeles</h3>
                    <p>We had such a great time in LA!</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                    alt="Chicago" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>Chicago</h3>
                    <p>Thank you, Chicago!</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <%-- slider end --%>
    <br><br>

    <div class="container">
        <div class="row">
            <div class="col-sm text-center">
                <button class="button" onclick="window.location.href = 'studentLogin.jsp';"><span style="vertical-align:middle"><i class="fas fa-user-graduate"></i> Login as Student</span></button>
            </div>
            <div class="col-sm text-center">
                <button class="button" onclick="window.location.href = 'adminLogin.jsp';"><span style="vertical-align:middle"><i class="fas fa-users-cog"></i> Login as Administrator</span></button>
            </div>
        </div>
    </div>
    <br><br>


    <%-- Department & Subject Name --%>
    <div class="display-4 text-center"><h1>Department & Subject Name</h1></div><br>
    <div class="container">
        <%-- List --%>
        <div class="jumbotron">
            <div class="row">
                <div class="col-4">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list"
                            href="#list-home" role="tab" aria-controls="home">Information Technology</a>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list"
                            href="#list-profile" role="tab" aria-controls="profile">Second</a>
                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"
                            href="#list-messages" role="tab" aria-controls="messages">third</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list"
                            href="#list-settings" role="tab" aria-controls="settings">fourth</a>
                    </div>
                </div>
                <div class="col-8">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                            <div class="text-center">
                                <h3>Subject Name</h3>
                                vishal kumar jha
                            </div>
                        </div>
                        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">This is
                            first</div>
                        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
                        <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <br><br>
        <footer></footer>

    <%-- Optional JavaScript --%>
    <%-- jQuery first, then Popper.js, then Bootstrap JS --%>
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