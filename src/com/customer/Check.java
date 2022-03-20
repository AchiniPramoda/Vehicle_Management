package com.customer;

public class Check {

	 	private int id;
	    private String type;
	    private  int prices;
	    private String soursecity;
	    
		public Check(int id, String type, int prices, String soursecity) {
			super();
			this.id = id;
			this.type = type;
			this.prices = prices;
			this.soursecity = soursecity;
		}


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public String getType() {
			return type;
		}


		public void setType(String type) {
			this.type = type;
		}


		public int getPrices() {
			return prices;
		}


		public void setPrices(int prices) {
			this.prices = prices;
		}


		public String getSoursecity() {
			return soursecity;
		}


		public void setSoursecity(String soursecity) {
			this.soursecity = soursecity;
		}
	   
}
