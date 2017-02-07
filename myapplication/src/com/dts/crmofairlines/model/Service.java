package com.dts.crmofairlines.model;

import com.dts.core.model.AbstractDataObject;

public class Service extends AbstractDataObject {
	private String airlinename;
	private String planename;
	private String startdate;
	private String innegratedby;
	private String usingtechnolgy;
	private String capacity;
	private String city;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAirlinename() {
		return airlinename;
	}
	public void setAirlinename(String airlinename) {
		this.airlinename = airlinename;
	}
	public String getPlanename() {
		return planename;
	}
	public void setPlanename(String planename) {
		this.planename = planename;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getInnegratedby() {
		return innegratedby;
	}
	public void setInnegratedby(String innegratedby) {
		this.innegratedby = innegratedby;
	}
	public String getUsingtechnolgy() {
		return usingtechnolgy;
	}
	public void setUsingtechnolgy(String usingtechnolgy) {
		this.usingtechnolgy = usingtechnolgy;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	
	
	
	
}
