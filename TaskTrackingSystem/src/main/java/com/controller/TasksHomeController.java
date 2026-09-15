package com.controller;

import java.io.IOException;
import java.util.List;

import com.dao.TaskOperations;
import com.model.TaskModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/taskshome")
public class TasksHomeController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Request came for TasksHome Controller");
		// get all tasks from database
		TaskOperations tp = new TaskOperations();
		List<TaskModel> list = tp.getAllTasks();
		System.out.println("In TasksHomeController :" + list);
		if (list != null) {
			req.setAttribute("list", list);
			RequestDispatcher rf = req.getRequestDispatcher("task-home.jsp");
			rf.forward(req, resp);
		}
	}
}
