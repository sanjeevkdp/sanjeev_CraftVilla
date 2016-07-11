package com.CraftVilla.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CraftVilla.DAO.LoginDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("toGet method called");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		System.out.println("topost method called");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		LoginDAO loginDAO=new LoginDAO();
		RequestDispatcher Dispatcher;
		if(loginDAO.isValidLogin(email,password)==true)
		{
		Dispatcher=request.getRequestDispatcher("Home1.jsp");
		Dispatcher.forward(request, response);
			
		}
		else
		{
			Dispatcher=request.getRequestDispatcher("login.jsp");
			Dispatcher.include(request, response);
			PrintWriter writer=response.getWriter();
			writer.append("invalid credintial please enter valid user id and password");		
			
		
		}
		
		
	}

}
