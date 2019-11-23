<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*,exam.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
	<meta name="google" content="notranslate">
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
		
	<%
		ResultSet rs = ExamDAO.showQuestion();
		
		ArrayList<String> questions = new ArrayList<String>();
		ArrayList<String> answers = new ArrayList<String>();
		
		ArrayList<String> op1 = new ArrayList<String>();
		ArrayList<String> op2 = new ArrayList<String>();
		ArrayList<String> op3 = new ArrayList<String>();
		ArrayList<String> op4 = new ArrayList<String>();
	
		while(rs.next()) {
			
			String ques = rs.getString(1);
			String ans = rs.getString(2);
			
			questions.add(ques);
			answers.add(ans);
			
			op1.add(rs.getString(3));
			op2.add(rs.getString(4));
			op3.add(rs.getString(5));
			op4.add(rs.getString(6));
		}
	
	%>
    
    <div class="heading">
        <h2 class="display-4 text-center">
            All the best  <%out.println(session.getAttribute("name")); %> <span class="float-right bg-white text-danger rounded-pill"><h3>&nbsp; Timer: <span id="time">00:10</span> minutes! &nbsp;</h3></span>
        </h2>
    </div>
    <!-- heading -->
    <br><br>
    <div class="container border shadow-none p-3 mb-5 bg-light rounded">
        <div class="col-sm">
            <div class="text-center h1">Questions</div><br><br>
            <div class="col-sm text-center h4" id="qstn"></div><br>

            <form action="">
                <div class="form-group">
                    <div class="container h5">
                        <div class="row mx-md-n5">
                            <div class="col px-md-5">
                                <div class="p-3 border bg-light">
                                    <div class="form-check">
                                        <input type="radio" name="answerRadios" class="options" value="1">
                                        <label  class="form-check-label" for="exampleRadios1" >
                                            <span id="opp1" ></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col px-md-5">
                                <div class="p-3 border bg-light">
                                    <div class="form-check">
                                        <input type="radio" name="answerRadios" class="options" value="2">
                                        <label class="form-check-label" for="exampleRadios1" >
                                            <span id="opp2" ></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                    
                        <div class="row mx-md-n5">
                            <div class="col px-md-5">
                                <div class="p-3 border bg-light">
                                    <div class="form-check">
                                        <input type="radio" name="answerRadios" class="options" value="3">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <span id="opp3" ></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col px-md-5">
                                <div class="p-3 border bg-light">
                                    <div class="form-check">
                                        <input type="radio" name="answerRadios" class="options" value="4">
                                        <label class="form-check-label" for="exampleRadios1">
                                            <span id="opp4" ></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>
        <br><br>
    </div>

    <div class="clearfix container text-center">
        <button type="button" class="btn btn-lg btn-warning float-left" onclick="goPrev()">Previous</button>
       
       <form action="result.jsp" id="impform" method="post" >
       			<input type="hidden" name="attm" value="" id="attm">
       			<input type="hidden" name="corr" value="" id="corr">
       			<input type="hidden" name="incorr" value="" id="incorr">
       			<input type="submit" class="btn btn-lg btn-success" onclick="finalSubmit()"></input>
       			
       			<button type="button" class="btn btn-lg btn-primary float-right" onclick="goNext()">Next</button>
       </form> 
       
       
        
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
    <script>
    	
    	function startTimer(duration, display) {
    	 
    		var timer = duration, minutes, seconds;
    	    setInterval(function () {
    	        
    	    	minutes = parseInt(timer / 60, 10);
    	        seconds = parseInt(timer % 60, 10);

    	        minutes = minutes < 10 ? "0" + minutes : minutes;
    	        seconds = seconds < 10 ? "0" + seconds : seconds;

    	        display.textContent = minutes + ":" + seconds;

    	        if (--timer < 0) {
    	            finalSubmit();
    	        } 
    	        
    	    }, 1000);
    	}

    	window.onload = function () {
    	    	var fiveMinutes =10,
    	        display = document.querySelector('#time');
    	    	startTimer(fiveMinutes, display);
    	};
    	
    	var qn=0;
    	
    	var qns = [];
    	var op1s = [];
    	var op2s = [];
    	var op3s = [];
    	var op4s = [];
    	var ans = [];
    	
    	var maxsize = <% out.print(questions.size()); %>
    	
    	var qstnelem = document.getElementById("qstn");
    	var opp1 = document.getElementById("opp1");
    	var opp2 = document.getElementById("opp2");
    	var opp3 = document.getElementById("opp3");
    	var opp4 = document.getElementById("opp4");
    
    	<% for(String s: questions) {%>
    		qns.push('<%=s %>');
    	<%}%>

    	<% for(String s: answers) {%>
		ans.push('<%=s %>');
		<%}%>
    	
    	<% for(String s: op1) {%>
		op1s.push('<%=s %>');
		<%}%>
		
    	<% for(String s: op2) {%>
		op2s.push('<%=s %>');
		<%}%>
		
    	<% for(String s: op3) {%>
		op3s.push('<%=s %>');
		<%}%>
		
    	<% for(String s: op4) {%>
		op4s.push('<%=s %>');
		<%}%>
	
    	
    	console.log(qns);
    	qstnelem.innerHTML = '<span>'+qns[qn]+'</span>';
    	
    	opp1.innerHTML = '<span>'+op1s[qn]+'</span>';
    	opp2.innerHTML = '<span>'+op2s[qn]+'</span>';
    	opp3.innerHTML = '<span>'+op3s[qn]+'</span>';
    	opp4.innerHTML = '<span>'+op4s[qn]+'</span>';
    	
    	let ans_sequence=[]
    	
    	for(let i=0;i<maxsize;i++) ans_sequence[i]=0;
    	
    	function goNext() {
    		
    		var checked_sqs = document.querySelector('input[name = "answerRadios"]:checked').value;
    		ans_sequence[qn]=checked_sqs;
    		
    		qn++;
    		
    		if(qn==maxsize) qn=maxsize-1;
			
    		if(ans_sequence[qn]!=0)
    			document.getElementsByClassName("options")[ans_sequence[qn]-1].checked=true;
    		else document.getElementsByClassName("options")[0].checked=true;
    		
        	qstnelem.innerHTML = '<span>'+qns[qn]+'</span>';
				
        	opp1.innerHTML = '<span>'+op1s[qn]+'</span>';
        	opp2.innerHTML = '<span>'+op2s[qn]+'</span>';
        	opp3.innerHTML = '<span>'+op3s[qn]+'</span>';
        	opp4.innerHTML = '<span>'+op4s[qn]+'</span>';
        	
    		console.log(qn);
    	}
    	
		function goPrev() {
			
    		var checked_sqs = document.querySelector('input[name = "answerRadios"]:checked').value;
    		ans_sequence[qn]=checked_sqs;
    		
			qn--;
			if(qn<0) qn=0;
			
			if(ans_sequence[qn]!=0)
    			document.getElementsByClassName("options")[ans_sequence[qn]-1].checked=true;
			else document.getElementsByClassName("options")[0].checked=true;
			
			qstnelem.innerHTML = '<span>'+qns[qn]+'</span>';
			
	    	opp1.innerHTML = '<span>'+op1s[qn]+'</span>';
	    	opp2.innerHTML = '<span>'+op2s[qn]+'</span>';
	    	opp3.innerHTML = '<span>'+op3s[qn]+'</span>';
	    	opp4.innerHTML = '<span>'+op4s[qn]+'</span>';
			
			console.log(qn);
		}
		
		function finalSubmit() {
				
    		var checked_sqs = document.querySelector('input[name = "answerRadios"]:checked').value;
    		ans_sequence[qn]=checked_sqs;					
			
			console.log(ans_sequence);
			console.log(ans);
			
			let corr=0,incorr=0,att=0;
			for(var i=0;i<maxsize;i++) {
				
				if(ans_sequence[i]==0) continue;
				else if(ans_sequence[i]==ans[i]) { corr++; att++; }
				else if(ans_sequence[i]!=ans[i]) { incorr++; att++; }
			}
			
			document.getElementById("attm").value = att;
			console.log(att);
			document.getElementById("corr").value = corr;
			document.getElementById("incorr").value = incorr;
	
			document.getElementById("impform").submit();
		}
    	
    	
    </script>
</body>

</html>