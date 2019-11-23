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
 * Servlet implementation class QuestionDelete
 */
@WebServlet("/exam.controller.QuestionDelete")
public class QuestionDelete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Questions c = new Questions();

		//code for delete will be here
		
		String id = request.getParameter("id");
		c.setQuestion(id);;
		int status = ExamDAO.deleteQuestion(c);
		
		if(status>0)
		{
			response.sendRedirect("addQuestion.jsp");
		}
		else {
			out.print("error in deletion");
		}
	}

}
