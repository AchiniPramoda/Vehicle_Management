package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.ITripService;
import com.service.TripServiceImpl;

@WebServlet("/DeleteTripServlet")
public class DeleteTripServlet extends HttpServlet {


	private static final long serialVersionUID = 1871871796669342804L;


	public DeleteTripServlet() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		String tripID = request.getParameter("tripID");			
		
		ITripService iTripService = new TripServiceImpl();
		iTripService.removeTrip(tripID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListTrip.jsp");
		dispatcher.forward(request, response);
	}

}
