<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.crmofairlines.model.*,com.dts.crmofairlines.dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessCard.jsp' starting page</title>
    
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
  if(request.getParameter("Login")!=null)
  {
 String target="Card.jsp?status=Card is not inserted";
String username=request.getParameter("username");
String card=request.getParameter("card");
ServiceHistroy aservicehistroy=new   ServiceHistroy();
boolean flag= aservicehistroy.addCardDetails(username,card);
 if(flag)
 {
 target="Card.jsp?status=Card is inserted";
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 }%>
 
  <%
  if(request.getParameter("update")!=null)
  {
  String target="Card.jsp?status=Card is not Deleted";
String username=request.getParameter("username");
String card=request.getParameter("card");
ServiceHistroy aservicehistroy=new   ServiceHistroy();
boolean flag= aservicehistroy. delteCardDetails(username);
 if(flag)
 {
 target="Card.jsp?status=Card is Deleted";
 }
 RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
 }%>
 <br>
  </body>
</html>
