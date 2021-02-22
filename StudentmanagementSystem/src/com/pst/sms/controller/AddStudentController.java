package com.pst.sms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddStudentController")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get data from UI
		
		String rollNumber = request.getParameter("roll_number");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
		
		
		System.out.println("data--" + rollNumber +" " + name + " " + gender + " " + course);
	}

}
