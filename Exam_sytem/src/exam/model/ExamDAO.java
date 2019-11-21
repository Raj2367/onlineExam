package exam.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import exam.db.Student;
import exam.db.Admin;
import exam.db.Insruction;
import exam.db.Provider;
import exam.db.Questions;

public class ExamDAO {

	public static boolean doStudentLogin(Student c) 
	{
		boolean status = false;
		Connection con =null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lit");
			String sql ="select * from students where id=? and name=?";
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println(pst);
	
			 pst.setString(1, c.getId()); System.out.println(c.getId());
			 System.out.println(c.getPassword()); pst.setString(2, c.getPassword());
			 
			ResultSet rs = pst.executeQuery();
			if(rs.next()) 
			{
				status=true;
				System.out.println("status is "+ status);
			}
		}
		catch (Exception e) 
		{
			status=false;
			e.printStackTrace();
		}
		return status;
	}

	public static boolean doAdminLogin(Admin a) {
		
		boolean status = false;
		Connection con =null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lit");
			String sql ="select * from admin where id=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println(pst);
			
			 pst.setString(1, a.getId());  
			 pst.setString(2, a.getPassword());
			 
			ResultSet rs = pst.executeQuery();
			if(rs.next()) 
			{
				status=true;
				System.out.println("status is "+ status);
			}
		}
		catch (Exception e) 
		{
			status=false;
			e.printStackTrace();
		}
		return status;
	}
	public static ResultSet showComplains()
	{
		ResultSet rs=null;
		try {
			Connection conn = Provider.getOracleConnection();
			String sql = "select * from students";
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
			return rs;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return rs;
		
	}
	public static ResultSet showInstruction()
	{
		ResultSet rs=null;
		try {
			Connection conn = Provider.getOracleConnection();
			String sql = "select * from instruction";
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
			return rs;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return rs;
		
	}
	public static ResultSet showQuestion()
	{
		ResultSet rs=null;
		try {
			Connection conn = Provider.getOracleConnection();
			String sql = "select * from questions";
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
			return rs;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return rs;
		
	}

	public static int addStudent(Student c) 
	{
		int status = 0;
		try 
		{
			Connection conn = Provider.getOracleConnection();
			String sql = "insert into students values(dept_seq.nextval,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getId());
			pst.setString(2, c.getPassword());
			status = pst.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
		
	}

	public static int addQuestion(Questions c) 
	{
		int status = 0;
		try 
		{
			Connection conn = Provider.getOracleConnection();
			String sql = "insert into questions values(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getQuestion());
			pst.setString(2, c.getAnswer());
			status = pst.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
		
	}

	public static int addInstruction(Insruction c) {
		int status = 0;
		try 
		{
			Connection conn = Provider.getOracleConnection();
			String sql = "insert into instruction values(?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getRules());
			status = pst.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

}

