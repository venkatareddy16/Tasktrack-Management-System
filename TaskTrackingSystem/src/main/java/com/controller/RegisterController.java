package com.controller;

import java.io.IOException;

import com.dao.UserOperations;
import com.model.UserModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("request came for RegisterController");
		String userfullname = req.getParameter("userfullname");
		String useremail = req.getParameter("useremail");
		String userpassword = req.getParameter("userpassword");
		String userrole = req.getParameter("userrole");

		UserModel u = new UserModel();
		u.setUserfullname(userfullname);
		u.setUseremail(useremail);
		u.setUserpassword(userpassword);
		u.setUserrole(userrole);

		System.out.println(u);

		UserOperations up = new UserOperations();
		boolean status = up.createUser(u);
		if (status) {
			RequestDispatcher rf = req.getRequestDispatcher("login.jsp");
			rf.forward(req, resp);
		} else {
			System.out.println("Registration Failed");
			RequestDispatcher rf = req.getRequestDispatcher("index.jsp");
			rf.forward(req, resp);
		}
	}

}
