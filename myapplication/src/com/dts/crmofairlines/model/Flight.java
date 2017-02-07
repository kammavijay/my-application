package com.dts.crmofairlines.model;

import com.dts.core.model.AbstractDataObject;
import java.sql.*;
public class Flight extends AbstractDataObject {
private int id;
private String airlinesname;
private String planename;
private String fromplace;
private String toplace;
private String depart;
private String returntime;
private double miles;
private String returndate;
private String departtime;
public double price;
private String firstname;
private String lastname;
private String gender;
private String dob;
private String city;
private String state;

private String country;
private String landno;
private String mobileno;
private String email;
private String visa;
private String loginname;
public String getLoginname() {
	return loginname;
}
public void setLoginname(String loginname) {
	this.loginname = loginname;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getLandno() {
	return landno;
}
public void setLandno(String landno) {
	this.landno = landno;
}
public String getMobileno() {
	return mobileno;
}
public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getVisa() {
	return visa;
}
public void setVisa(String visa) {
	this.visa = visa;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getDeparttime() {
	return departtime;
}
public void setDeparttime(String departtime) {
	this.departtime = departtime;
}
public String getReturndate() {
	return returndate;
}
public void setReturndate(String returndate) {
	this.returndate = returndate;
}
public String getAirlinesname() {
	return airlinesname;
}
public void setAirlinesname(String airlinesname) {
	this.airlinesname = airlinesname;
}
public String getPlanename() {
	return planename;
}
public void setPlanename(String planename) {
	this.planename = planename;
}
public String getFromplace() {
	return fromplace;
}
public void setFromplace(String fromplace) {
	this.fromplace = fromplace;
}
public String getToplace() {
	return toplace;
}
public void setToplace(String toplace) {
	this.toplace = toplace;
}
public String getDepart() {
	return depart;
}
public void setDepart(String depart) {
	this.depart = depart;
}
public String getReturntime() {
	return returntime;
}
public void setReturntime(String returntime) {
	this.returntime = returntime;
}
public double getMiles() {
	return miles;
}
public void setMiles(double miles) {
	this.miles = miles;
}

public int getId() {
    return id;
}

public void setId(int id) {
    this.id = id;
}



}
