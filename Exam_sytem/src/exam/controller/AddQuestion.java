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
		Questions c = new Questions();
		c.setQuestion(question);
		c.setAnswer(answer);
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
