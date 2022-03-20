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

@WebServlet("/UpdateTripServlet")
public class UpdateTripServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;


	public UpdateTripServlet() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Trip trip = new Trip();
		String tripID = request.getParameter("tripID2");
		System.out.println(tripID);
		trip.setTripID(tripID);
		trip.setCustomername(request.getParameter("customername"));
		trip.setContactno(request.getParameter("contactno"));
		trip.setVehicletype(request.getParameter("vehicletype"));
		trip.setPickup(request.getParameter("pickup"));
		trip.setDistance(request.getParameter("distance"));
		trip.setDestination(request.getParameter("destination"));
		trip.setTotalprice(request.getParameter("totalprice"));
		trip.setDate(request.getParameter("date"));
		
		ITripService iTripService = new TripServiceImpl();
		iTripService.updateTrip(tripID, trip);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListTrip.jsp");
		dispatcher.forward(request, response);
	}

}
