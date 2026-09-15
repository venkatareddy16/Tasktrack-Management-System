package com.controller;

import java.io.IOException;

import com.dao.TaskOperations;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteTaskController")
public class DeleteTaskController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Request came for DeleteTaskController");

		int task_id = Integer.parseInt(req.getParameter("task_id"));

		TaskOperations tp = new TaskOperations();
		boolean status=tp.deleteTaskbyId(task_id);
		
		if(status || (!status)) {
			resp.sendRedirect("taskshome");  // redirect to taskshome servlet
		}
		
	}
}
