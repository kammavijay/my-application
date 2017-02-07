<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.core.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessAddService.jsp' starting page</title>
    
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
String target="AddServiceHistroy.jsp?status=Record is Failed";
String airlinesname=request.getParameter("airlines");
String planename=request.getParameter("planename");
String ineragateddate=DateWrapper.parseDate(request.getParameter("ineragateddate"));
String ineragatedby=request.getParameter("ineragatedby");
String usingtechnolgy=request.getParameter("usingtechnolgy");
String capacity=request.getParameter("capacity");
Service aservice=new Service();
			 aservice.setAirlinename(airlinesname);
			 aservice.setPlanename(planename);
			
			 aservice.setStartdate(ineragateddate);
			 aservice.setInnegratedby(ineragatedby);
			 aservice.setUsingtechnolgy(usingtechnolgy);
			 aservice.setCapacity(capacity);
			 ServiceHistroy aservicehistroy=new ServiceHistroy();
			 boolean flag=aservicehistroy.addServiceHistroy(aservice);
			if(flag)
			{
			target="AddServiceHistroy.jsp?status=Record is Inserted";
			}
			RequestDispatcher rd=request.getRequestDispatcher(target);
			rd.forward(request,response);

  %>



  </body>
</html>
