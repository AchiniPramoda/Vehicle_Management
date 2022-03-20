package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.model.*;
import com.trip.util.CommonUtil;
import com.trip.util.DBConnectionUtil;
//implement the ItripService
public class TripServiceImpl implements ITripService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(TripServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static {

		createTripTable();
	}

	private PreparedStatement preparedStatement;

	public static void createTripTable() {

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();// statement  interface and  used to sending a SQL query to the database

			//statement.executeUpdate("DROP TABLE IF EXISTS trip");
			
			statement.executeUpdate(
					"CREATE TABLE trip( tripID varchar(255), customername varchar(255), contactno varchar(255), vehicletype varchar(255), pickup varchar(255), distance  varchar(255), destination varchar(255), totalprice varchar(255), date varchar(255), primary key (tripID))");

		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	@Override
	//insert trip details
	public void addTrip(Trip trip) {

		String tripID = CommonUtil.generateIDs(getTripIDs());
		System.out.println(tripID);
		//excepting handling 
		try {
			connection = DBConnectionUtil.getDBConnection();

			preparedStatement = connection.prepareStatement(
					"insert into trip (tripID, customername, contactno, vehicletype,pickup , distance, destination , totalprice, date) values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
			connection.setAutoCommit(false);

			trip.setTripID(tripID);
			preparedStatement.setString(1, trip.getTripID());
			preparedStatement.setString(2, trip.getCustomername());
			preparedStatement.setString(3, trip.getContactno());
			preparedStatement.setString(4, trip.getVehicletype());
			preparedStatement.setString(5, trip.getPickup());
			preparedStatement.setString(6, trip.getDistance());
			preparedStatement.setString(7, trip.getDestination());
			preparedStatement.setString(8, trip.getTotalprice());
			preparedStatement.setString(9, trip.getDate());

			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {

			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	@Override
	public Trip getTripByID(String tripID) {

		return actionOnTrip(tripID).get(0);
	}

	@Override
	public ArrayList<Trip> getTrip() {

		return actionOnTrip(null);
	}

	@Override
	public void removeTrip(String tripID) {

		if (tripID != null && !tripID.isEmpty()) {

			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection.prepareStatement("delete from trip where trip.tripID = ?");
				preparedStatement.setString(1, tripID);
				preparedStatement.executeUpdate();
			} catch (SQLException | ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {

				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}
//array list creation get details
	private ArrayList<Trip> actionOnTrip(String tripID) {

		ArrayList<Trip> tripList = new ArrayList<Trip>();
		try {
			connection = DBConnectionUtil.getDBConnection();

			if (tripID != null && !tripID.isEmpty()) {

				preparedStatement = connection.prepareStatement("select * from trip where trip.tripID = ?");
				preparedStatement.setString(1, tripID);
			}

			else {
				preparedStatement = connection.prepareStatement("select * from trip");
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Trip trip = new Trip();
				trip.setTripID(resultSet.getString(1));
				trip.setCustomername(resultSet.getString(2));
				trip.setContactno(resultSet.getString(3));
				trip.setVehicletype(resultSet.getString(4));
				trip.setPickup(resultSet.getString(5));
				trip.setDistance(resultSet.getString(6));
				trip.setDestination(resultSet.getString(7));
				trip.setTotalprice(resultSet.getString(8));
				trip.setDate(resultSet.getString(9));
				tripList.add(trip);
			}

		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return tripList;
	}

	@Override
	//udate the details
	public Trip updateTrip(String tripID, Trip trip) {

		if (tripID != null && !tripID.isEmpty()) {

			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection.prepareStatement(
						"update trip as e set e.customername = ?, e.contactno = ?, e.vehicletype = ?, e.pickup = ?, e.distance = ?, e.destination  = ?, e.totalprice = ?, e.date = ?  where e.tripID = ?");
				preparedStatement.setString(1, trip.getCustomername());
				preparedStatement.setString(2, trip.getContactno());
				preparedStatement.setString(3, trip.getVehicletype());
				preparedStatement.setString(4, trip.getPickup());
				preparedStatement.setString(5, trip.getDistance());
				preparedStatement.setString(6, trip.getDestination());
				preparedStatement.setString(7, trip.getTotalprice());
				preparedStatement.setString(8, trip.getDate());
				preparedStatement.setString(9, trip.getTripID());
				preparedStatement.executeUpdate();

			} catch (SQLException | ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated trip
		return getTripByID(tripID);
	}
 
	private ArrayList<String> getTripIDs() {

		ArrayList<String> arrayList = new ArrayList<String>();

		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection.prepareStatement("select e.tripID from trip as e");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(1));
			}
		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {

			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
}
