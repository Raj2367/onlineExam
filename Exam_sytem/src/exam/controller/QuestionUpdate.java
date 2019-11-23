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
 * Servlet implementation class QuestionUpdate
 */
@WebServlet("/exam.controller.QuestionUpdate")
public class QuestionUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String que = request.getParameter("que");
		String newAns = request.getParameter("newAns");
		
		Questions c = new Questions();
		c.setQuestion(que);
		c.setAnswer(newAns);
		
		int status = ExamDAO.updateAnswer(c);
		
		if(status>0)
		{
			response.sendRedirect("addQuestion.jsp");
		}
		else
		{
			out.print("error in updation");
		}
	}

}
