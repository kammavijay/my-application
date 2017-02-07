<%@ page import="com.dts.crmofairlines.model.*" %>
<%@ page import="com.dts.crmofairlines.dao.*" %>
<%@ page import="com.dts.core.util.*" %>
<%@ page import="java.util.*" %>

<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<title>:: Jagson Airlines :: Home ::</title>

<meta name="author" content="Sumit Goyal, scatteredpixels.com">
<link rel="stylesheet" type="text/css" href="Home_files/style.css">
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script language="javascript">
function validate()
{
   var temp = document.register;
   if(temp.firstname.value=="" || temp.lastname.value=="" || temp.gender.value=="" || temp.dob.value=="" || temp.mobileno.value=="" || temp.landlineno.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   if(temp.email.value==""&& temp.visa.value=="")
   {
       alert("All Fields are manditory");
       
   }
   
   
   
   return true;
}


</script><script language="JavaScript" src="scripts/ts_picker.js"></script>





</head>
<body onLoad="MM_preloadImages('navigation/aboutus2.gif','navigation/message2.gif','navigation/fly2.gif','navigation/howto2.gif','navigation/pro2.gif','navigation/charter2.gif','navigation/tech2.gif')" topmargin="0" leftmargin="0" bgcolor="#ffffff" marginheight="0" marginwidth="0" text="#000000"><div id="upper" style="position: absolute; left: 0pt; top: 0pt; width: 143px; height: 67px; z-index: 100; visibility: hidden;"><div id="upperfrmt" style="border-style: solid; border-color: rgb(224, 224, 224) rgb(128, 128, 128) rgb(128, 128, 128) rgb(224, 224, 224); border-width: 1px; width: 143px; height: 67px; background-color: rgb(255, 255, 255);"><div style="border: 0px none ; position: absolute; left: 2px; top: 2px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="0" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='pondicherry flights';" onClick="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pondicherry</div></span></div> <div style="border: 0px none ; position: absolute; left: 2px; top: 18px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="1" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='himachal pradesh flights';" onClick="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Himachal Pradesh</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 34px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="2" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fs_others.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar - Nainital</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 50px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="3" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fsall.pdf', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Download Schedules</div></span></div>  <div style="border: 0px none ; position: absolute; left: 2px; top: 66px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="11" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('pantnagar.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar</div></span></div>  </div></div><div id="sider" style="position: absolute; left: 0pt; top: 0pt; width: 143px; height: 67px; z-index: 100; visibility: hidden;"><div id="siderfrmt" style="border-style: solid; border-color: rgb(224, 224, 224) rgb(128, 128, 128) rgb(128, 128, 128) rgb(224, 224, 224); border-width: 1px; width: 143px; height: 67px; background-color: rgb(255, 255, 255);"><div style="border: 0px none ; position: absolute; left: 2px; top: 2px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="4" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='pondicherry flights';" onClick="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pondicherry</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 18px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="5" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='himachal pradesh flights';" onClick="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Himachal Pradesh</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 34px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="6" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fs_others.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Pant Nagar - Nainital</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 50px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="7" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('fsall.pdf', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"><div align="left">Download Schedules</div></span></div><div style="border: 0px none ; position: absolute; left: 2px; top: 66px; width: 139px; height: 15px; font-family: Tahoma; font-size: 10px; font-weight: bold; text-decoration: none; color: rgb(255, 255, 255); background-color: rgb(255, 142, 43);" id="8" onMouseOver="cFrame.HoverSel(0,'_','_',this);window.status='';" onClick="cFrame.execURL('pantnagar.htm', 'frames[self]');"><span style="position: absolute; left: 5px; top: 1px; width: 129px;"> <div align="left">Pant Nagar</div></span></div>    </div></div>
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
<td><jsp:include page="customer.html"/>
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
   <%
  String airlines=request.getParameter("airlinesname");
  String planename=request.getParameter("planename");
  String fromplace=request.getParameter("fromplace");
  String toplace=request.getParameter("toplace");
  String departdate=request.getParameter("departdate");
  System.out.println(airlines);
String returndate=request.getParameter("returndate");
 // String returndate=request.getParameter("returndate");
  //String miles=request.getParameter("miles");
 // String departtime=request.getParameter("departtime");
   //String returntime=request.getParameter("returntime");
  // String price=request.getParameter("price");
  String i1=request.getParameter("i1");
 
  Flight aflight1=(Flight)application.getAttribute("acorehash3");
   double miles=aflight1.getMiles();
String departtime=aflight1.getDeparttime();
String returntime=aflight1.getReturntime();
double price=aflight1.getPrice(); 

   %>
  <form name="register" method="post" action="FlightBooking1.jsp" onsubmit="return validate()">
     
          <input type="hidden" name="airlines" value="<%=airlines %>">
          <input type="hidden" name="planename" value="<%=planename %>">
          <input type="hidden" name="fromplace" value="<%=fromplace %>">
          <input type="hidden" name="toplace" value="<%=toplace %>">
          <input type="hidden" name="departdate" value="<%=departdate %>"/>
          <input type="hidden" name="returndate" value="<%=returndate %>"/>
          <input type="hidden" name="miles" value="<%=miles %>">
          <input type="hidden" name="departtime" value="<%=departtime %>">
          <input type="hidden" name="returntime" value="<%=returntime %>">
          <input type="hidden" name="price" value="<%=price %>">
     
     
     
     
     
     
     
     
     
     
     
         
    <table>
      <tr>
        <td><strong>FirstName        </strong></td>
        <td> <label>
          <input type="text" name="firstname">
          </label>                </td>
      </tr>
      <tr>
        <td><strong>LastName</strong></td>
        <td><label>
          <input type="text" name="lastname">
        </label></td>
      </tr>
      <tr>
        <td><strong>Gender</strong></td>
        <td><label>
          <select name="gender"><option value="Male">Male</option><option value="Female">Female</option>
          </select>
        </label></td>
      </tr>
      <tr>
        <td><strong>DOB</strong></td>
        <td><label>
          <input type="text" name="dob" size="19"><a href="javascript:show_calendar('document.register.dob', document.register.dob.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                               
        </label></td>
      </tr>
      <tr>
        <td><strong>AirLineType</strong></td>
        <td><label>
          <select name="airlines">
              <%  AirlineName airlinenames=new AirlineName();
                CoreHash airlinecorehash= airlinenames.getAirlines();
                Enumeration aenumeration= airlinecorehash.keys();

                while(aenumeration.hasMoreElements())
                {
                    Integer i2 = (Integer)aenumeration.nextElement();
                    AirlineBean airlinebean = (AirlineBean)airlinecorehash.get(i2);
                    String airlinesname=airlinebean.getName();
                    %><option value="<%=airlinesname%>"><%=airlinesname%></option><%
                }
             %>
          </select>
        </label></td>
      </tr>
      <tr>
        <td><strong>City</strong></td>
        <td><select name="city">
      <option value="Bangalore">Bangalore</option>
      <option value="Hyderbad">Hyderbad</option>
      <option value="Mumbai">Mumbai</option>
      <option value="NewDelhi">NewDelhi</option>
      <option value="Chenni">Chenni</option>
      <option value="Vijayawada">Vijayawada</option>
      <option value="Vizag">Vizag</option>
      <option value="Lacknow">Lacknow</option>
      <option value="Punay">Punay</option>
       </select></td>
 </tr>
      <tr>
        <td><strong>State</strong></td>
        <td><select name="state">
          <option value="AndhraPradesh">AndhraPradesh</option>
          <option value="Karanataka">Karanataka</option>
          <option value="TamilNadu">TamilNadu</option>
          <option value="U.P">U.P</option>
          <option value="MahaRasta">MahaRasta</option>
          <option value="Delhi">Delhi</option>
        </select></td>
      </tr>
      <tr>
        <td><strong>Country</strong></td>
        <td><select name="country">
          <option value="India">India</option>
          <option value="America">America</option>
          <option value="England">England</option>
          <option value="Parais">Parais</option>
           </select></td>
      </tr>
      <tr>
        <td><strong>MobileNo</strong></td>
        <td><label>
          <input type="text" name="mobileno">
        </label></td>
      </tr>
      <tr>
        <td><strong>LandLineNo</strong></td>
        <td><label>
          <input type="text" name="landlineno">
        </label></td>
      </tr>
      <tr>
        <td><strong>Email</strong></td>
        <td><label>
          <input type="text" name="email">
        </label></td>
      </tr>
      <tr>
        <td><strong>Visa</strong></td>
        <td><label>
         Yes <input name="visa" type="radio" value="true">
          No
          <input name="visa" type="radio" value="false">
        </label></td>
        <td>e<label></label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Bokking" value="FlightBooking"/></td>
      </tr>
    </table>
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
<td background="Home_files/liner.htm" height="2">&nbsp;pa</td></tr>
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