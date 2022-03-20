package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Trip;
import com.service.ITripService;
import com.service.TripServiceImpl;

@WebServlet("/GetTripServlet")
public class GetTripServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


	public GetTripServlet() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

 		String tripID = request.getParameter("tripID2");			
		ITripService iTripService = new TripServiceImpl();
		Trip trip = iTripService.getTripByID(tripID);

		request.setAttribute("trip", trip);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/GetTrip.jsp");
		dispatcher.forward(request, response);
	}

}
