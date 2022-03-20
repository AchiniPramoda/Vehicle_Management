package com.model;

public class Trip {

	private String tripID;
	
	private String customername;

	private String contactno;

	private String vehicletype;

	private String pickup;
	
	private String distance;
	
	private String destination;
	
	private String totalprice;
	
	private String date;

	public String getTripID() {
		return tripID;
	}

	public void setTripID(String tripID) {
		this.tripID = tripID;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getVehicletype() {
		return vehicletype;
	}

	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}


	public String getPickup() {
		return pickup;
	}

	public void setPickup(String pickup) {
		this.pickup = pickup;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @param tripID
	 * @param customername
	 * @param contactno
	 * @param distance
	 * @param destination
	 * @param totalprice
	 * @param date
	 * @param pickup 
	 */
	public Trip(String tripID, String customername, String contactno, String vehicletype, String pickup,
			String distance, String destination, String totalprice, String date) {
		super();
		this.tripID = tripID;
		this.customername = customername;
		this.contactno = contactno;
		this.vehicletype = vehicletype;
		this.pickup =pickup;
		this.distance = distance;
		this.destination = destination;
		this.totalprice = totalprice;
		this.date = date;
	}

	/**
	 * 
	 */
	public Trip() {
		super();
	}

	@Override
	public String toString() {
		return "Orders [tripID=" + tripID + ", customername=" + customername + ", contactno=" + contactno
				+ ", vehicletype=" + vehicletype + ", pickup=" + pickup + ", distance=" + distance
				+ ", destination=" + destination + ", totalprice=" + totalprice + ", date=" + date + "]";
	}

		
}
