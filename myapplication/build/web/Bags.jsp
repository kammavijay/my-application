<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.crmofairlines.model.*" %>
 <%@ page import="com.dts.crmofairlines.dao.*" %>
 <%@ page import ="com.dts.core.util.*" %>
  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'Bags.jsp' starting page</title>
    
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
  try{
  
  if(request.getParameter("AddBagCosts")!=null)
  {
  String target="AdminBaggage.jsp?status=Record is Not Inserted";
  String airlinesname=request.getParameter("airlines");
  System.out.println(airlinesname);
  String bag1=request.getParameter("bag1");
  System.out.println("this is "+bag1);
  String bag2=request.getParameter("bag2");
  String bag3=request.getParameter("bag3");
  String bag4=request.getParameter("bag4");
   BagageProfile abagageprofile=new BagageProfile();
   abagageprofile.setAirlinesname(airlinesname);
   abagageprofile.setBagtype1cost(bag1);
   abagageprofile.setBagtype2cost(bag2);
   abagageprofile.setBagtype3cost(bag3);
   abagageprofile.setBagtype4cost(bag4);
   BagageManagement abagagemanagement=new BagageManagement();
  boolean flag=abagagemanagement.addBagageManagement(abagageprofile);
   if(flag)
   {
   target="AdminBaggage.jsp?status=Record is  Inserted";
}
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response);
}
%>
<%  if(request.getParameter("UpdateBagCosts")!=null)
  { String  target="AdminBaggage.jsp?status=Record is  not Updated";
  String airlinesname=request.getParameter("airlines");
  System.out.println(airlinesname);
  String bag1=request.getParameter("bag1");
  System.out.println("this is "+bag1);
  String bag2=request.getParameter("bag2");
  String bag3=request.getParameter("bag3");
  String bag4=request.getParameter("bag4");
   BagageProfile abagageprofile=new BagageProfile();
   abagageprofile.setAirlinesname(airlinesname);
   abagageprofile.setBagtype1cost(bag1);
   abagageprofile.setBagtype2cost(bag2);
   abagageprofile.setBagtype3cost(bag3);
   abagageprofile.setBagtype4cost(bag4);
   BagageManagement abagagemanagement=new BagageManagement();
  boolean flag=abagagemanagement.updateBaggageCost(abagageprofile);
   if(flag)
   {
   target="AdminBaggage.jsp?status=Record is  Updated";
}
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response); }%>
  <%if(request.getParameter("ViewBagCosts")!=null)
  {
 BagageManagement abagagemanagement=new BagageManagement();
 String airlinesname=request.getParameter("airlinesname");
  CoreHash acorehash=abagagemanagement.viewBaggageDetails(airlinesname);
  Enumeration aenumeration=acorehash.keys();
  while(aenumeration.hasMoreElements())
  {
  Integer i1=(Integer)aenumeration.nextElement();
  BagageProfile abagageprofile=(BagageProfile)acorehash.get(i1);
  out.println(abagageprofile.getAirlinesname());
  out.println(abagageprofile.getBagtype1cost());
  out.println(abagageprofile.getBagtype2cost());
  out.println(abagageprofile.getBagtype3cost());
  out.println(abagageprofile.getBagtype4cost());
  }
  }}catch(Exception e)
  {
  }
  
   %>
   
   
    </body>
</html>
