package com.bitwise.training.utils;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidationServlet
 */
@WebServlet("/ValidationServlet")
public class ValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidationServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpServletResponse res = (HttpServletResponse) response;
		Map<String, String> messages = new HashMap<String, String>();
		String college = (String) request.getParameter("college");
		String degree = (String) request.getParameter("degree");
		String grade = (String) request.getParameter("grade");

		String company = (String) request.getParameter("company");
		String designation = (String) request.getParameter("designation");
		String salary = (String) request.getParameter("salary");
		
		String street = (String) request.getParameter("street");
		String city = (String) request.getParameter("city");
		String pin = (String) request.getParameter("pin");
		String state = (String) request.getParameter("state");
		
		if ( college.isEmpty() || degree.isEmpty() || grade.isEmpty()) {
			
		}
	}

}
