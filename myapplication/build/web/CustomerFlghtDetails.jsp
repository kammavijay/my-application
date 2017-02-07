<%@ page import="com.dts.crmofairlines.model.*" %>
<%@ page import="com.dts.crmofairlines.dao.*" %>
<%@ page import="com.dts.core.util.*" %>
<%@ page import="java.util.*" %>


<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<title>:: Jagson Airlines :: Home ::</title>

<meta name="author" content="Sumit Goyal, scatteredpixels.com">
<link rel="stylesheet" type="text/css" href="Home_files/style.css">
<script language="JavaScript">
<!-- 

//position value=8
//offset value=15

var p_top= (screen.height - screen.availHeight + 0);
var p_left= (screen.availWidth-800-0);

//--> 
</script>
<script src="Home_files/menu.js"></script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<style type="text/css">
<!--
.style4 {color: #FFFFFF; font-weight: bold; }
.style5 {color: #663300}
-->
</style>
</head>
<body onLoad="MM_preloadImages('navigation/aboutus2.gif','navigation/message2.gif','navigation/fly2.gif','navigation/howto2.gif','navigation/pro2.gif','navigation/charter2.gif','navigation/tech2.gif')" topmargin="0" leftmargin="0" bgcolor="#ffffff" marginheight="0" marginwidth="0" text="#000000"><div id="upper" style="position: absolute; left: 0pt; top: 0pt; width: 143px; height: 67px; z-index: 100; visibility: hidden;"><div id="upperfrmt" style="border-style: solid; border-color: rgb(224, 224, 224) rgb(128, 128, 128) rgb(128, 128, 128) rgb(224, 224, 224); border-width: 1px; width: 143px; height: 67px; background-color: rgb(255, 255, 255);"><div style="border: 0px none ; position: absolute; left: 2px; top: 2px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="0" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='pondicherry flights';" onClick="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pondicherry</div></span></div> <div style="border: 0px none ; position: absolute; left: 2px; top: 18px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="1" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='himachal pradesh flights';" onClick="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Himachal Pradesh</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 34px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="2" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fs_others.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar - Nainital</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 50px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="3" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fsall.pdf', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Download Schedules</div></span></div>  <div style="border: 0px none ; position: absolute; left: 2px; top: 66px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="11" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('pantnagar.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar</div></span></div>  </div></div><div id="sider" style="position: absolute; left: 0pt; top: 0pt; width: 143px; height: 67px; z-index: 100; visibility: hidden;"><div id="siderfrmt" style="border-style: solid; border-color: rgb(224, 224, 224) rgb(128, 128, 128) rgb(128, 128, 128) rgb(224, 224, 224); border-width: 1px; width: 143px; height: 67px; background-color: rgb(255, 255, 255);"><div style="border: 0px none ; position: absolute; left: 2px; top: 2px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="4" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='pondicherry flights';" onClick="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pondicherry</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 18px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="5" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='himachal pradesh flights';" onClick="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Himachal Pradesh</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 34px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="6" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fs_others.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar - Nainital</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 50px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="7" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fsall.pdf', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Download Schedules</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 66px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="8" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('pantnagar.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"> <div align="left">Pant Nagar</div></span></div>    </div></div>
<script language="JavaScript">
<!--




<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v3.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : args[i+1];
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    if ((nbArr = document[grpName]) != null)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = args[i+1];
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>

<table border="0" cellpadding="0" cellspacing="0" width="100%">

<tbody><tr>
<td background="Home_files/bg.gif" width="33%"><img src="Home_files/px1.gif" height="1" width="1"></td>
<td width="34%">
<table border="0" cellpadding="0" cellspacing="0" width="100%">

<tbody><tr>
<td background="Home_files/bg_left.gif" valign="bottom">
<img src="Home_files/bg_left.gif" height="16" hspace="0" width="17"></td>
<td valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%">

<tbody><tr>
<td valign="top"><table border="0" cellpadding="0" cellspacing="0" width="745">
  <tbody><tr>
    <td valign="middle"><jsp:include  page="header.html"/></td>

    </tr>
  <tr>
    <td><img src="Home_files/butline.gif" alt="" usemap="#butline_Map" border="0" height="40" width="745">
<map name="butline_Map">
<area shape="rect" alt="" coords="583,10,676,38" href="">
<area shape="rect" alt="" coords="361,11,480,39" href="">
</map>    </td>
  </tr>
  <tr>
    <td valign="middle"><img src="Home_files/homeline.gif" alt="" usemap="#homeline_Map" border="0" height="22" width="745">
<map name="homeline_Map">
<area shape="rect" alt="" coords="0,0,65,21" href="">
</map></td>
  </tr>
</tbody></table>
</td>
</tr>
<tr>
<td>
<jsp:include page="customer.html"/>
</td></tr>

<tr>
<td>

<table style="margin-top: 0pt; margin-bottom: 0pt; border-collapse: collapse;" border="0" bordercolor="#111111" cellpadding="0" cellspacing="0" height="281" width="743">

<tbody><tr>
<td rowspan="3" height="281" valign="top" width="9">&nbsp; </td>
<td height="19" valign="top" width="202">&nbsp;</td>
<td rowspan="2" height="16" valign="top">
<p align="right"><b>For Online booking
<a title="" href="">
<font color="#f16f01" size="2">click here</font></a></b></p></td></tr>
<tr>

  <td rowspan="2" height="262" valign="top" width="202">
  <br/><br/><%if(request.getParameter("status")!=null)
  { %>
  <%=request.getParameter("status") %>
  <%} %>
 <%if(request.getParameter("returntype").equalsIgnoreCase("oneway"))
{
application.setAttribute("returntype",request.getParameter("returntype"));
String fromplace=request.getParameter("fromplace");

String toplace=request.getParameter("toplace");
String depart=DateWrapper.parseDate(request.getParameter("depart"));


String adults=request.getParameter("adults");
Flight aflight=new Flight();
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(depart);

FlightBooking aflightbooking=new FlightBooking();

CoreHash acorehash=aflightbooking.getOneWayFlight(aflight);
Enumeration aenumeration=acorehash.keys();%>
<table width="652" border="1" bordercolor="#663300">
  <tr bgcolor="#006699"><td><div align="center"><span class="style4">AirLinesName</span></div></td>
  <td><div align="center"><span class="style4">PlaneName</span></div></td>
  <td><div align="center"><span class="style4">FromPlace</span></div></td>
  <td><div align="center"><span class="style4">toplace</span></div></td>
  <td><div align="center"><span class="style4">DepartDate</span></div></td>
  <td><div align="center"><span class="style4">miles</span></div></td>
  <td><div align="center"><span class="style4">DepartTime</span></div></td>
  <td><div align="center"><span class="style4">Returntime</span></div></td>
  <td><div align="center"><span class="style4">Price</span></div></td>
  <td><div align="center"><span class="style4">Booking</span></div></td>
  
  </tr>
<%while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Flight aflight1=(Flight)acorehash.get(i1);
application.setAttribute("acorehash3",aflight1);
String airlinesname=aflight1.getAirlinesname();
String planename=aflight1.getPlanename();
double miles=aflight1.getMiles();
String departtime=aflight1.getDeparttime();
String returntime=aflight1.getReturntime();
double price=aflight1.getPrice();
%>
<tr bgcolor="#FFFFFF">
<td><div align="center" class="style5"><strong><%=airlinesname%></strong></div></td>
<td><div align="center" class="style5"><strong><%=planename%></strong></div></td>
<td><div align="center" class="style5"><strong><%=fromplace%></strong></div></td>
<td><div align="center" class="style5"><strong><%=toplace%></strong></div></td>
<td><div align="center" class="style5"><strong><%=depart%></strong></div></td>
<td><div align="center" class="style5"><strong><%=miles%></strong></div></td>
<td><div align="center" class="style5"><strong><%=departtime%></strong></div></td>
<td><div align="center" class="style5"><strong><%=returntime%></strong></div></td>
<td><div align="center" class="style5"><strong><%=price%></strong></div></td>
<td><div align="center" class="style5"><strong><%out.println("<a href='FlightBooking.jsp?i1="+i1+"&airlinesname="+airlinesname+"&planename="+planename+"&fromplace="+fromplace+"&toplace="+toplace+"&departdate="+depart+"&miles="+miles+"&departtime="+departtime+"&returntime="+returntime+"&price="+price+"'>Booking</a>");
%></strong></div></td>
</tr>
<%}%>
</table>
<% }%>
 <%if(request.getParameter("returntype").equalsIgnoreCase("twoway"))
{
application.setAttribute("returntype",request.getParameter("returntype"));

String fromplace=request.getParameter("fromplace");
String toplace=request.getParameter("toplace");
String depart=request.getParameter("depart");
String returndate=request.getParameter("returndate");
String adults=request.getParameter("adults");
Flight aflight=new Flight();
aflight.setFromplace(fromplace);
aflight.setToplace(toplace);
aflight.setDepart(depart);
aflight.setReturndate(returndate);

FlightBooking aflightbooking=new FlightBooking();

CoreHash acorehash=aflightbooking.getTwoWayFlight(aflight);
Enumeration aenumeration=acorehash.keys();%>
Booking Flight Timings:
<table border="1" bordercolor="#663300"><tr bgcolor="#006699"><td><div align="center"><span class="style4">AirLinesName</span></div></td>
<td><div align="center"><span class="style4">PlaneName</span></div></td>
<td><div align="center"><span class="style4">FromPlace</span></div></td>
<td><div align="center"><span class="style4">toplace</span></div></td>
<td><div align="center"><span class="style4">Miles</span></div></td>
<td><div align="center"><span class="style4">Departdate</span></div></td>
<td><div align="center"><span class="style4">ReturnDate</span></div></td>
<td><div align="center"><span class="style4">DepartTime</span></div></td>
<td><div align="center"><span class="style4">Returntime</span></div></td>
<td><div align="center"><span class="style4">Price</span></div></td>
<td><div align="center"><span class="style4">Booking</span></div></td>
  
</tr>
<%while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Flight aflight1=(Flight)acorehash.get(i1);
application.setAttribute("acorehash3",aflight1);
String airlinesname=aflight1.getAirlinesname();
String planename=aflight1.getPlanename();

double miles=aflight1.getMiles();
String departtime=aflight1.getDeparttime();
String returntime=aflight1.getReturntime();
double price=aflight1.getPrice();
%>
<tr bgcolor="#FFFFFF"><td><div align="center" class="style5"><%=airlinesname%></div></td><td><div align="center" class="style5"><%=planename%></div></td><td><div align="center" class="style5"><%=fromplace%></div></td><td><div align="center" class="style5"><%=toplace%></div></td><td><div align="center" class="style5"><%=miles%></div></td><td><div align="center" class="style5"><%=depart%></div></td><td><div align="center" class="style5"><%=returndate%></div></td><td><div align="center" class="style5"><%=departtime%></div></td><td><div align="center" class="style5"><%=returntime%></div></td><td><div align="center" class="style5"><%=price%></div></td>
<td><%out.println("<a href='FlightBooking.jsp?airlinesname="+airlinesname+"&planename="+planename+"&fromplace="+fromplace+"&toplace="+toplace+"&departdate="+depart+"&returndate="+returndate+"&miles="+miles+"&departtime="+departtime+"&returntime="+returntime+"&price="+price+"'>Booking</a>");
%></td></tr>
<%
}%>
</table>
<%
}
 %>  </td>
</tr>
<tr>
  <td height="265" valign="top"><p style="font-size: 12px;"><b></b></p>
    <p></p>    <div align="center"><img src="images/abc.gif"></div></td>
  </tr>
</tbody></table></td>
</tr>

<tr>
<td background="Home_files/liner.htm" height="2"></td></tr>
<tr>
<td background="Home_files/line.gif" height="15"><img alt="" src="Home_files/bot01.jpg" border="0" height="9" width="745"></td></tr>
<tr>
<td>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="23" width="100%">
                    <tbody><tr> 
                      <td height="23" width="26%">&nbsp;</td>
                      <td height="23" width="74%">&nbsp;</td>

                    </tr>
</tbody></table></td></tr></tbody></table></td>
<td background="Home_files/bg_right.gif" valign="bottom"><img src="Home_files/bg_right.gif" height="16" width="17"></td></tr></tbody></table></td>
<td background="Home_files/bg.gif" width="33%"><img src="Home_files/px1.gif" height="1" width="1"></td></tr></tbody></table></body></html>