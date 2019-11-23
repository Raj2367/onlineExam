package exam.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam.db.Questions;
import exam.db.Student;
import exam.model.ExamDAO;

/**
 * Servlet implementation class AddQuestion
 */
@WebServlet("/exam.controller.AddQuestion")
public class AddQuestion extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String question= request.getParameter("question");
		String answer = request.getParameter("answer");
		
		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String option4 = request.getParameter("option4");
		
		Questions c = new Questions();
		c.setQuestion(question);
		c.setAnswer(answer);
		c.setOption1(option1);
		c.setOption2(option2);
		c.setOption3(option3);
		c.setOption4(option4);
		
		int status = ExamDAO.addQuestion(c);
		if (status>0) 
		{
			response.sendRedirect("addQuestion.jsp");
		} 
		else 
		{
			out.print("error in question addition");
		}
	}

}
