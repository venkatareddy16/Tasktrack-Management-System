package com.controller;

import java.io.IOException;

import com.dao.UserOperations;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Request came for Login Controller");
		String useremail = req.getParameter("useremail");
		String userpassword = req.getParameter("userpassword");

		UserOperations up = new UserOperations();
		boolean status = up.validateUser(useremail, userpassword);

		if (status) {
			HttpSession session = req.getSession();
			String userfullname = up.getUserFullName(useremail);
			session.setAttribute("userfullname", userfullname);
			resp.sendRedirect("taskshome"); // redirect to another another servlet
			// to change the url from LoginController to taskshome use sendRedirect
		} else {
			System.out.println("Login Failed");
			RequestDispatcher rf = req.getRequestDispatcher("login.jsp");
			rf.forward(req, resp);
		}

	}
}
