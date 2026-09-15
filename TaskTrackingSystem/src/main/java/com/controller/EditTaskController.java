package com.controller;

import java.io.IOException;

import com.dao.TaskOperations;
import com.model.TaskModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditTaskController")
public class EditTaskController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Request came for EditTaskController");

		int task_id = Integer.parseInt(req.getParameter("task_id"));

		TaskOperations tp = new TaskOperations();
		TaskModel tm = tp.findTaskById(task_id);
		System.out.println("In EditTaskController :" + tm);
		if (tm != null) {
			req.setAttribute("task", tm);
			RequestDispatcher rf = req.getRequestDispatcher("updateTask.jsp");
			rf.forward(req, resp);
		}
	}
}
