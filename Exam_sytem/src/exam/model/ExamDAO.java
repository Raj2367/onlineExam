package exam.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import exam.db.Student;
import exam.db.Admin;
import exam.db.Provider;

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

}

