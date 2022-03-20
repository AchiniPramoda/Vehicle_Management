package com.util;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Check;
import com.customer.Customer;
import com.customer.DBConnect;
public class checkdbutil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	
public static boolean validate(String soursecity) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from checkavalibilty where soursecity='"+soursecity+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			System.out.println("error: adress, user, password?");
		}
		
		return isSuccess;
	}
public static List<Check> getCheck(String Soursecity) {
	
	ArrayList<Check> check = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from checkavalibilty  where soursecity='"+Soursecity+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String type= rs.getString(2);
			int prices= rs.getInt(3);
			String soursecity = rs.getString(4);
		
			
		Check cus = new Check(id,type,prices,soursecity);
			check.add(cus);
		}
		
	} catch (Exception e) {
		
	}
	
	return check;	
}
public static List<Check> getCheckDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Check> cus = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from  checkavalibilty where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String type = rs.getString(2);
			int prices = rs.getInt(3);
			String  soursecity = rs.getString(4);
	
			Check c = new Check(id,type,prices,soursecity);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
}




}
