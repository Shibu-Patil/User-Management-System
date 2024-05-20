package com.org.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.org.dto.User;

public class UserDao {
	
	public void saveUser (User user)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
			PreparedStatement prepareStatement = connection.prepareStatement("insert into new_table(name,age,email,password,mobile) values(?,?,?,?,?)");
			
			prepareStatement.setString(1, user.getName());
			prepareStatement.setInt(2, user.getAge());
			prepareStatement.setString(3, user.getEmail());
			prepareStatement.setString(4, user.getPassword());
			prepareStatement.setLong(5, user.getMobile());
			
			prepareStatement.execute();
			
			connection.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public User fetchUserByEmailAndPassword(String email,String password) 
	{ 
	      

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table where email=? and password=?");
			prepareStatement.setString(1, email);
			prepareStatement.setString(2, password);
			
			ResultSet r=prepareStatement.executeQuery();
			
		    if (r.next())
			 {
		    	User user=new User();
		    	int Id = r.getInt(1);
		    	String name = r.getString(2);
		    	int Age = r.getInt(3);
		    	String Email = r.getString(4);
		    	String Password = r.getString(5);
		    	Long Mobile = r.getLong(6);
		    	
		    	user.setId(Id);
		    	user.setName(name);
		    	user.setAge(Age);
		    	user.setEmail(Email);
		    	user.setPassword(Password);
		    	user.setMobile(Mobile);
			    return user;
			    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
	
	public List<User> fetchalluser(){
		User user=null;
		List l=new ArrayList<User>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table");
			
			ResultSet r=prepareStatement.executeQuery();
			
		    while (r.next())
			 {
		 
		    	user=new User();
		    	int Id = r.getInt(1);
		    	String name = r.getString(2);
		    	int Age = r.getInt(3);
		    	String Email = r.getString(4);
		    	String Password = r.getString(5);
		    	Long Mobile = r.getLong(6);
		    	
		    	user.setId(Id);
		    	user.setName(name);
		    	user.setAge(Age);
		    	user.setEmail(Email);
		    	user.setPassword(Password);
		    	user.setMobile(Mobile);
		    	
		    	l.add(user);
		    	
			    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return l;

	}
	
	
	public User FetchById(int id)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table where id=?");
			prepareStatement.setInt(1, id);
			
			
			ResultSet r=prepareStatement.executeQuery();
			
		    if (r.next())
			 {
		    	User user=new User();
	
		    	String name = r.getString(2);
		    	int Age = r.getInt(3);
		    	String Email = r.getString(4);
		    	String Password = r.getString(5);
		    	Long Mobile = r.getLong(6);
		    	
		    	user.setId(id);
		    	user.setName(name);
		    	user.setAge(Age);
		    	user.setEmail(Email);
		    	user.setPassword(Password);
		    	user.setMobile(Mobile);
			    return user;
			    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
	
	public boolean fetchuserbyidandpassword(int id,String newpassword,String oldpassword) 
	{ 
	      

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table where id=? and password=?");
			prepareStatement.setInt(1, id);
			prepareStatement.setString(2, oldpassword);
			
			ResultSet r=prepareStatement.executeQuery();
			
		    if (r.next())
			 {
		    
				PreparedStatement prepareStatement1 = connection.prepareStatement("update new_table set password=? where id="+id);
				prepareStatement1.setString(1, newpassword);
				prepareStatement1.executeUpdate();
		    	//"update new_table set password="+newpassword+"where id="+id
			    return true;    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean UpdateById(int id,User user )
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
			PreparedStatement prepareStatement = connection.prepareStatement("update new_table set name=?,age=?,email=?,mobile=? where id="+ id);
			//System.out.println(id);
		  	prepareStatement.setString(1, user.getName());
		  //	System.out.println(user.getName());
			prepareStatement.setInt(2, user.getAge());
			prepareStatement.setString(3, user.getEmail());
			prepareStatement.setLong(4, user.getMobile());
			

		   int r = prepareStatement.executeUpdate();
			
		    if (r==1)
			 {
				return true;	
			 }
				
			connection.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean DeleteById(int id)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
			PreparedStatement prepareStatement = connection.prepareStatement("delete from new_table	 where id="+ id);
			

		   int r = prepareStatement.executeUpdate();
			
		    if (r==1)
			 {
				return true;	
			 }
				
			connection.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean FetchByMailandName(User user)
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table where name=? and email=?");
			prepareStatement.setString(1, user.getName());
			prepareStatement.setString(2, user.getEmail());
			
			ResultSet r=prepareStatement.executeQuery();
			
		    if (r.next())
			 {
		    
				PreparedStatement prepareStatement1 = connection.prepareStatement("update new_table set password=? where email=?");
				prepareStatement1.setString(1, user.getPassword());
				prepareStatement1.setString(2, user.getEmail());
				prepareStatement1.executeUpdate();
		    	//"update new_table set password="+newpassword+"where id="+id
			    return true;    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
	public User FetchbyMobileAndName(long mobile,String name)
	{
		try {
			User user=null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermanagement","root","root");
	
			PreparedStatement prepareStatement = connection.prepareStatement("select * from new_table where mobile=? and name=?");
			prepareStatement.setLong(1,mobile);
			prepareStatement.setString(2,name);
			
			ResultSet r=prepareStatement.executeQuery();
			
		    if (r.next())
			 {
		    	user=new User();
		    	String email = r.getString(4);
		    	user.setEmail(email);
			    return user;    
			 }
			 

			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return null;
	}
	}
	
	
	
