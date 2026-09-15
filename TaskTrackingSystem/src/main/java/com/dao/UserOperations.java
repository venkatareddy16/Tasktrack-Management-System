package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dbconnection.DataBaseConnection;
import com.model.UserModel;

public class UserOperations implements UserOperationInfo {
	boolean status=false;
	Connection con=null;
	PreparedStatement ps=null;
	@Override
	public boolean createUser(UserModel u) {
		String query="insert into users (userfullname,useremail,userpassword,userrole) values (?,?,?,?)";
		con=DataBaseConnection.getConnection();
		try {
		   ps= con.prepareStatement(query);
		   ps.setString(1, u.getUserfullname());
		   ps.setString(2, u.getUseremail());
		   ps.setString(3, u.getUserpassword());
		   ps.setString(4, u.getUserrole());
		   int n=ps.executeUpdate();
		   if(n>0) {
			   System.out.println("User Registered successfully");
			   status=true;
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean validateUser(String useremail, String userpassword) {
		String query="select * from users where useremail=? and userpassword=?";
		con=DataBaseConnection.getConnection();
		ResultSet rs=null;
		try {
		   ps= con.prepareStatement(query);
		   ps.setString(1, useremail);
		   ps.setString(2, userpassword);
		   rs=ps.executeQuery();
		   while(rs.next()) { /* it only one time executes*/
			   System.out.println("User Logined successfully");
			   status=true;
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}
	
	@Override
	public String getUserFullName(String useremail) {
		String query="SELECT userfullname FROM Users WHERE useremail = ?";
	    String userfullname = null;
	    ResultSet rs=null;
	    try {
	        con = DataBaseConnection.getConnection();

	        ps = con.prepareStatement(query);

	        ps.setString(1, useremail);

	        rs = ps.executeQuery();

	        if (rs.next()) {
	            userfullname = rs.getString("userfullname");
	        }
	    } catch (Exception e) {
	        System.out.println(e.toString());
	    }
	    return userfullname;
	}

}
