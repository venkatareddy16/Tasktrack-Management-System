package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dbconnection.DataBaseConnection;
import com.model.TaskModel;

public class TaskOperations implements TaskOperationInfo {

	boolean status=false;
	Connection con=null;
	PreparedStatement ps=null;
	@Override
	public boolean createTask(TaskModel tm) {
		String query="insert into tasks (task_name,task_description,story_points,assigned_to,task_status) values (?,?,?,?,?)";
		con=DataBaseConnection.getConnection();
		try {
		   ps= con.prepareStatement(query);
		   ps.setString(1, tm.getTask_name());
		   ps.setString(2, tm.getTask_description());
		   ps.setInt(3, tm.getStory_points());
		   ps.setString(4, tm.getAssigned_to());
		   ps.setString(5, tm.getTask_status());
		   int n=ps.executeUpdate();
		   if(n>0) {
			   System.out.println("Task Created successfully");
			   status=true;
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean updateTaskbyId(int id, TaskModel tm) {
		String query="update tasks set task_name=?,task_description=?,story_points=?,assigned_to=?,task_status=? where task_id=?";
		con=DataBaseConnection.getConnection();
		try {
		   ps= con.prepareStatement(query);
		   ps.setString(1, tm.getTask_name());
		   ps.setString(2, tm.getTask_description());
		   ps.setInt(3, tm.getStory_points());
		   ps.setString(4, tm.getAssigned_to());
		   ps.setString(5, tm.getTask_status());
		   ps.setInt(6, id);
		   int n=ps.executeUpdate();
		   if(n>0) {
			   System.out.println("Task Updated successfully");
			   status=true;
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean deleteTaskbyId(int id) {
		String query="delete from tasks where task_id=?";
		con=DataBaseConnection.getConnection();
		try {
		   ps= con.prepareStatement(query);
		   ps.setInt(1, id);
		   int n=ps.executeUpdate();
		   if(n>0) {
			   System.out.println("Task Deleted successfully");
			   status=true;
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public TaskModel findTaskById(int id) {
		String query="select * from tasks where task_id=?";
		con=DataBaseConnection.getConnection();
		ResultSet rs=null;
		TaskModel ts=new TaskModel();
		try {
		   ps= con.prepareStatement(query);
		   ps.setInt(1, id);
		   rs=ps.executeQuery();
		   while(rs.next()) {
			   ts.setTask_id(rs.getInt("task_id"));
			   ts.setTask_name(rs.getString("task_name"));
			   ts.setTask_description(rs.getString("task_description"));
			   ts.setStory_points(rs.getInt("story_points"));
			   ts.setAssigned_to(rs.getString("assigned_to"));
			   ts.setTask_status(rs.getString("task_status"));
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return ts;
	}

	@Override
	public List<TaskModel> getAllTasks() {
		String query="select * from tasks";
		con=DataBaseConnection.getConnection();
		ResultSet rs=null;
		List<TaskModel> list=new ArrayList<>();
		try {
		   ps= con.prepareStatement(query);
		   rs=ps.executeQuery();
		   while(rs.next()) {
			   /*every row we have to create a new Model Object*/
			   TaskModel ts=new TaskModel();
			   ts.setTask_id(rs.getInt("task_id"));
			   ts.setTask_name(rs.getString("task_name"));
			   ts.setTask_description(rs.getString("task_description"));
			   ts.setStory_points(rs.getInt("story_points"));
			   ts.setAssigned_to(rs.getString("assigned_to"));
			   ts.setTask_status(rs.getString("task_status"));
			   list.add(ts);
		   }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

}
