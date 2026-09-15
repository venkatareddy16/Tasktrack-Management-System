package com.controller;

import java.io.IOException;

import com.dao.TaskOperations;
import com.dao.UserOperations;
import com.model.TaskModel;
import com.model.UserModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/CreateTaskController")
public class CreateTaskController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Request came for CreateTaskController");
		String task_name=req.getParameter("task_name");
		String task_description=req.getParameter("task_description");
		int story_points=Integer.parseInt(req.getParameter("story_points"));
		String assigned_to=req.getParameter("assigned_to");
		String task_status=req.getParameter("task_status");
		
		TaskModel t = new TaskModel();
		t.setTask_name(task_name);
		t.setTask_description(task_description);
		t.setStory_points(story_points);
		t.setAssigned_to(assigned_to);
		t.setTask_status(task_status);
		

		System.out.println(t);

		TaskOperations tp = new TaskOperations();
		boolean status = tp.createTask(t);
		if(status||(!status)) {    //either true or false
			resp.sendRedirect("taskshome");
		}
	}
   
}
