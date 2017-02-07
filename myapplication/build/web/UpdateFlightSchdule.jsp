 <%@ page import="java.util.*,com.dts.core.util.*,com.dts.crmofairlines.dao.*,com.dts.crmofairlines.model.*"%>
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
.style1 {
	font-size: 36px;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
</head>
<body>
<script language="JavaScript">

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
<jsp:include page="Adminoptions.html"/>
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
  <br/><br/>


<%if(request.getParameter("status")!=null)
  { %>
  <%=request.getParameter("status") %>
  <%} %>
  
  <%
  
  String planename=request.getParameter("i2");
  System.out.println(planename);
  FlightBooking aflightbooking=new FlightBooking();
  CoreHash acorehash=aflightbooking.viewOneFlightDetails(planename);
  Enumeration aenumeration=acorehash.keys();
  
  while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Flight aflight1=(Flight)acorehash.get(i1);

String airlinesname=aflight1.getAirlinesname();
String planename1=aflight1.getPlanename();
String fromplace=aflight1.getFromplace();
String toplace=aflight1.getToplace();
String depart=aflight1.getDepart();
String returndate=aflight1.getReturndate();

double miles=aflight1.getMiles();
String departtime=aflight1.getDeparttime();
String returntime=aflight1.getReturntime();
double price=aflight1.getPrice();
%>
  
  
   
  <form name="form1" method="post" action="ProcessFlightSchdule.jsp">
    <table width="200" border="1">
      <tr>
        <td><strong>AirLineType</strong></td>
        <td><label>
          <select name="airlines">
		  <option value="<%=airlinesname%>"><%=airlinesname%></option>
          </select>
        </label></td>
      </tr>
      <tr>
        <td>PlaneName</td>
        <td>
          <label>
            <input type="text" name="planename" value="<%=planename%>">
          </label>
        
        </td>
      </tr>
      <tr>
        <td>FromPlace</td>
        <td>
                  <label>
            <input type="text" name="fromplace" value="<%=fromplace%>">
          </label>
        
        </td>
      </tr>
      <tr>
        <td>ToPlace</td>
        <td>
          <label>
            <input type="text" name="toplace" value="<%=toplace%>">
          </label>
        
        </td>
      </tr>
      <tr>
        <td>DepartDate</td>
        <td>
          <label>
            <input type="text" name="departdate" value="<%=depart%> ">
          </label>
        </td>
      </tr>
      <tr>
        <td>ReturnDate</td>
        <td>  <label>
            <input type="text" name="returndate" value="<%=returndate%> ">
          </label>
        
        </td>
      </tr>
      <tr>
        <td>Miles</td>
        <td>    <label>
            <input type="text" name="miles" value="<%=miles%>">
          </label>
        </td>
      </tr>
      <tr>
        <td>DepartTime</td>
        <td> <label>
            <input type="text" name="departtime" value="<%=departtime%>">
          </label>
        
        </td>
      </tr>
      <tr>
        <td>ReturnTime</td>
        <td> <label>
            <input type="text" name="returntime" value="<%=returntime%>">
          </label>
         </td>
      </tr>
     <tr>
        <td>Price</td>
        <td> <label>
            <input type="text" name="price" value="<%=price%>">
          </label>
         </td>
      </tr><%}
      %>
    </table>
 <input type="submit" name="UpdateFlights" value="UpdateFlights"/>
 
 </form> 

  </td>
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
                      <td height="23" width="26%">                        <p class="pxCopy">&nbsp;</p>
                      </td>
                      <td height="23" width="74%"> 
                        <p class="bot" align="center">| Home 
                          | About us | Support 
                          | Services&nbsp;| 
                          How to book tickets 
                          | Online Ticket 
                          Booking | Contacts 
                          |</p>                      </td>

                    </tr>
</tbody></table></td></tr></tbody></table></td>
<td background="Home_files/bg_right.gif" valign="bottom"><img src="Home_files/bg_right.gif" height="16" width="17"></td></tr></tbody></table></td>
<td background="Home_files/bg.gif" width="33%"><img src="Home_files/px1.gif" height="1" width="1"></td></tr></tbody></table></body></html>