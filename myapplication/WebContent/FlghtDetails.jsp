<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.dts.crmofairlines.model.*" %>
<%@ page import="com.dts.crmofairlines.dao.*" %>
<%@ page import="com.dts.core.util.*" %>
<%@ page import="java.util.*" %>
<%if(request.getParameter("returntype").equalsIgnoreCase("oneway"))
{
application.setAttribute("returntype",request.getParameter("returntype"));
String fromplace=request.getParameter("fromplace");
String toplace=request.getParameter("toplace");
System.out.println(fromplace);
System.out.println(toplace);
String depart=request.getParameter("depart");
String adults=request.getParameter("adults");
Flight aflight=new Flight();
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(depart);

FlightBooking aflightbooking=new FlightBooking();

CoreHash acorehash=aflightbooking.getOneWayFlight(aflight);
Enumeration aenumeration=acorehash.keys();
out.println("<table><tr><td>AirLinesName</td><td>PlaneName</td><td>FromPlace</td><td>toplace</td>Miles</td><td>DepartDate</td><td>miles</td><td>DepartTime</td><td>Returntime</td><td>Price</td></tr>");
while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Flight aflight1=(Flight)acorehash.get(i1);
out.println("<tr><td>");
String airlinesname=aflight1.getAirlinesname();
out.println(airlinesname);out.println("</td><td>");
String planename=aflight1.getPlanename();
out.println(planename);out.println("</td><td>");
out.println(fromplace);out.println("</td><td>");
out.println(toplace);out.println("</td><td>");
out.println(depart);out.println("</td><td>");
double miles=aflight1.getMiles();
out.println(miles);out.println("</td><td>");
String departtime=aflight1.getDeparttime();
out.println(departtime);out.println("</td><td>");
String returntime=aflight1.getReturntime();
out.println(returntime);out.println("</td><td>");
double price=aflight1.getPrice();
out.println(price);out.println("</td><td>");
out.println("<a href=FlightBooking.jsp?airlinesname="+airlinesname+"&planename="+planename+"&fromplace="+fromplace+"&toplace="+toplace+"&departdate="+depart+"&miles="+miles+"&departtime="+departtime+"&returntime="+returntime+"&price="+price+">Booking</a>");

}
out.println("</table>");
}
 %>
 <%if(request.getParameter("returntype").equalsIgnoreCase("twoway"))
{
application.setAttribute("returntype",request.getParameter("returntype"));

String fromplace=request.getParameter("fromplace");
String toplace=request.getParameter("toplace");
System.out.println(fromplace);
System.out.println(toplace);
String depart=request.getParameter("depart");
String returndate=request.getParameter("return");
System.out.println(returndate);
String adults=request.getParameter("adults");
Flight aflight=new Flight();
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(depart);
aflight.setReturndate(returndate);

FlightBooking aflightbooking=new FlightBooking();

CoreHash acorehash=aflightbooking.getTwoWayFlight(aflight);
Enumeration aenumeration=acorehash.keys();
out.println("<table><tr><td>AirLinesName</td><td>PlaneName</td><td>FromPlace</td><td>toplace</td>Miles</td><td>Departdate</td><td>ReturnDate</td><td>miles</td><td>DepartTime</td><td>Returntime</td><td>Price</td></tr>");
while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Flight aflight1=(Flight)acorehash.get(i1);
out.println("<tr><td>");
String airlinesname=aflight1.getAirlinesname();
out.println(airlinesname);out.println("</td><td>");
String planename=aflight1.getPlanename();
out.println(planename);out.println("</td><td>");
out.println(fromplace);out.println("</td><td>");
out.println(toplace);out.println("</td><td>");
out.println(depart);out.println("</td><td>");
out.println(returndate);out.println("</td><td>");

double miles=aflight1.getMiles();
out.println(miles);out.println("</td><td>");
String departtime=aflight1.getDeparttime();
out.println(departtime);out.println("</td><td>");
String returntime=aflight1.getReturntime();
out.println(returntime);out.println("</td><td>");
double price=aflight1.getPrice();
out.println(price);out.println("</td><td>");
out.println("<a href=FlightBooking.jsp?airlinesname="+airlinesname+"&planename="+planename+"&fromplace="+fromplace+"&toplace="+toplace+"&departdate="+depart+"&returndate="+returndate+"&miles="+miles+"&departtime="+departtime+"&returntime="+returntime+"&price="+price+">Booking</a>");

}
out.println("</table>");
}
 %>
</body>
</html>