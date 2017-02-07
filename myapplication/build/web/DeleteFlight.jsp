<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.crmofairlines.dao.FlightBooking"%>
<%@page import="com.dts.crmofairlines.model.Flight"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DeleteFlight.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <% 
 
   	String target="AdminViewAllFlights.jsp";
	String planename[]=request.getParameterValues("i2");
	String airlinesname= "";
	for(int i=0; i<planename.length; i++)
	{
	airlinesname = new FlightBooking().getAirlinesname(planename[i]);

	Flight aflight2=new Flight();
	aflight2.setAirlinesname(airlinesname);
	aflight2.setPlanename(planename[i]);
	FlightBooking aflightbooking2=new FlightBooking();
 	aflightbooking2.deleteFlights(aflight2);
 	}
	response.sendRedirect(target);
%>
  </body>
</html>
