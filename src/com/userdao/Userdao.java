package com.userdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.userbean.User;

public class Userdao {
	public static String url="jdbc:mysql://localhost:3306/amma";
	public static String user="root";
	public static String pass="root";
	 static Connection con=null;
	static Statement s=null;
	static PreparedStatement ps=null;
	static ResultSet rs=null;
	private static String insert="insert into user(name,email,city) values(?,?,?)";
	private static String display="select * from user";
	public static String delete="delete from user where id=?";
	public static String select="select * from user where id=?";
    public static String update="update user set name=?, email=?, city=? where id=?";
    

	   public static void insert(User u) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(insert);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getCity());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally 
		{
			try 
			{
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	public static ArrayList<User> display() {
		ArrayList<User>al=new ArrayList<User>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			s=con.createStatement();
			rs=s.executeQuery(display);
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String city=rs.getString("city");
				User u= new User(id, name, email, city);
				al.add(u);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				rs.close();
				s.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return al;
	}
	 public static void delete(int id ) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pass);
				ps=con.prepareStatement(delete);
				ps.setInt(1, id);   				
				ps.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally 
			{
				try 
				{
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
	 public static  User selectUserById(int id1) {
		 User u= null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pass);
				ps=con.prepareStatement(select);
				ps.setInt(1, id1); 
				rs=ps.executeQuery();
				rs.next();
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String city=rs.getString("city");
				 u=new User(id, name, email, city);


				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally 
			{
				try 
				{
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			return u;
		}
	 
	 public static void update(User u) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pass);
				ps=con.prepareStatement(update);
				ps.setString(1, u.getName());
				ps.setString(2, u.getEmail());
				ps.setString(3, u.getCity());
				ps.setInt(4, u.getId());
				ps.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally 
			{
				try 
				{
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}

}
