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

@WebServlet("/AddTripServlet")
public class AddTripServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AddTripServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");//type of response

		Trip orders = new Trip();//create object to assign the details  using trip java

		// Get the parameters used to query records

		orders.setCustomername(request.getParameter("customername"));
		orders.setContactno(request.getParameter("contactno"));
		orders.setVehicletype(request.getParameter("vehicletype"));
		orders.setPickup(request.getParameter("pickup"));
		orders.setDistance(request.getParameter("distance"));
		orders.setDestination(request.getParameter("destination"));
		orders.setTotalprice(request.getParameter("totalprice"));
		orders.setDate(request.getParameter("date"));

		ITripService iTripService = new TripServiceImpl();
		iTripService.addTrip(orders);

		request.setAttribute("orders", orders);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListTrip.jsp");//redirect to listTrip jsp page
		dispatcher.forward(request, response);
	}

}
