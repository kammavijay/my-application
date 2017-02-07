package com.dts.crmofairlines.model;

import com.dts.core.model.AbstractDataObject;

public class BagageProfile extends AbstractDataObject
{
private String Bid;
private String airlinesname;
private String bagtype1cost;
private String bagtype2cost;
private String bagtype3cost;
private String bagtype4cost;
private String loginname;
private double noofbags;
private double totalcost;
private String bagname;
public String getBagname() {
	return bagname;
}
public void setBagname(String bagname) {
	this.bagname = bagname;
}
public double getTotalcost() {
	return totalcost;
}
public void setTotalcost(double totalcost) {
	this.totalcost = totalcost;
}
public double getNoofbags() {
	return noofbags;
}
public void setNoofbags(double noofbags) {
	this.noofbags = noofbags;
}
public String getLoginname() {
	return loginname;
}
public void setLoginname(String loginname) {
	this.loginname = loginname;
}
public String getAirlinesname() {
	return airlinesname;
}
public void setAirlinesname(String airlinesname) {
	this.airlinesname = airlinesname;
}
public String getBagtype1cost() {
	return bagtype1cost;
}
public void setBagtype1cost(String bagtype1cost) {
	this.bagtype1cost = bagtype1cost;
}
public String getBagtype2cost() {
	return bagtype2cost;
}
public void setBagtype2cost(String bagtype2cost) {
	this.bagtype2cost = bagtype2cost;
}
public String getBagtype3cost() {
	return bagtype3cost;
}
public void setBagtype3cost(String bagtype3cost) {
	this.bagtype3cost = bagtype3cost;
}
public String getBagtype4cost() {
	return bagtype4cost;
}
public void setBagtype4cost(String bagtype4cost) {
	this.bagtype4cost = bagtype4cost;
}
public String getBid() {
        return Bid;
}

public void setBid(String Bid) {
    this.Bid = Bid;
}

}
