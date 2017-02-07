package com.dts.crmofairlines.model;

import com.dts.core.model.AbstractDataObject;

public class AirLineSurvey extends AbstractDataObject {

	private String loginname;
	private String emailid;
	private String airlinesname;
	private String reason;
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getAirlinesname() {
		return airlinesname;
	}
	public void setAirlinesname(String airlinesname) {
		this.airlinesname = airlinesname;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	}
