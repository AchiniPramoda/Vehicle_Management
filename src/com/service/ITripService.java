package com.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.model.Trip;


public interface ITripService {

	//This method is used to find or create a logger with the name passed as parameter
	public static final Logger log = Logger.getLogger(ITripService.class.getName());


	public void addTrip(Trip orders);//method to add trip


	public Trip getTripByID(String ordersID);//get trip details method
	

	public ArrayList<Trip> getTrip();//array list for get trip details
	
	public Trip updateTrip(String ordersID, Trip orders);//update trip method 

	public void removeTrip(String ordersID);//delete method

}
