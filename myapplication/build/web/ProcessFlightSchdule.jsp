<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessFlightSchdule.jsp' starting page</title>
    
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
   <%@ page import="com.dts.core.util.*"%>
<%@ page import="com.dts.crmofairlines.model.*"%>
<%@ page import="com.dts.crmofairlines.dao.*"%>
  <% 
  if(request.getParameter("AddFlights")!=null)
  {
  String target="AdminFlightSchdule.jsp?status=Record Inserted is Failed";
String airlinesname=request.getParameter("airlines");
String planename=request.getParameter("planename");
String fromplace=request.getParameter("fromplace");
String toplace=request.getParameter("toplace");
String departdate=DateWrapper.parseDate(request.getParameter("departdate"));
String returndate=DateWrapper.parseDate(request.getParameter("returndate"));
String miles=request.getParameter("miles");
String departtime=request.getParameter("departtime");
String returntime=request.getParameter("returntime");
String price=request.getParameter("price");
Flight aflight=new Flight();
aflight.setAirlinesname(airlinesname);
aflight.setPlanename(planename);
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(departdate);
aflight.setReturndate(returndate);
aflight.setMiles(Double.parseDouble(miles));
aflight.setDeparttime(departtime);
aflight.setReturntime(returntime);
aflight.setPrice(Double.parseDouble(price));
FlightBooking aflightbooking=new FlightBooking();
 boolean flag=aflightbooking.addFlights(aflight);
 if(flag)
 {
 target="AdminFlightSchdule.jsp?status=Record Inserted Successfully";
}
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response);
}
%>

 <% 
  if(request.getParameter("UpdateFlights")!=null)
  { String target="AdminFlightSchdule.jsp?status=Record Updataion Failed";
String airlinesname=request.getParameter("airlines");
String planename=request.getParameter("planename");
String fromplace=request.getParameter("fromplace");
String toplace=request.getParameter("toplace");
String departdate=DateWrapper.parseDate(request.getParameter("departdate"));
String returndate=DateWrapper.parseDate(request.getParameter("returndate"));
String miles=request.getParameter("miles");
String departtime=request.getParameter("departtime");
String returntime=request.getParameter("returntime");
String price=request.getParameter("price");
Flight aflight=new Flight();
aflight.setAirlinesname(airlinesname);
aflight.setPlanename(planename);
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(departdate);
aflight.setReturndate(returndate);
aflight.setMiles(Double.parseDouble(miles));
aflight.setDeparttime(departtime);
aflight.setReturntime(returntime);
aflight.setPrice(Double.parseDouble(price));
FlightBooking aflightbooking=new FlightBooking();
 boolean flag=aflightbooking.updateFlights(aflight);
 if(flag)
 {
 target="AdminViewAllFlights.jsp?status=Record Updated Successfully";
}
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response);

}
%>

<% 
  if(request.getParameter("DeleteFlights")!=null)
  {
   String target="AdminViewAllFlights.jsp?status=Record Deletion is Failed";
String planename=request.getParameter("i2");
System.out.println(planename);
String airlinesname=new FlightBooking().getAirlinesname(planename);

Flight aflight=new Flight();
aflight.setAirlinesname(airlinesname);
aflight.setPlanename(planename);
FlightBooking aflightbooking=new FlightBooking();
 boolean flag=aflightbooking.deleteFlights(aflight);
 if(flag)
 {
 target="AdminViewAllFlights.jsp?status=Record Deleted Successfully";
}
response.sendRedirect(target);
}

%>

  </body>
</html>
