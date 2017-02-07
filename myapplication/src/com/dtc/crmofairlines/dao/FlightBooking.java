package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.crmofairlines.model.Flight;

import java.sql.*;
import java.util.Hashtable;

public class FlightBooking extends AbstractDataAccessObject {
Connection con;
public FlightBooking()
{
	con=getConnection();


System.out.println("connection is established");

}
//This is onewayflight
public CoreHash getOneWayFlight(Flight aflight)
{PreparedStatement pstflight;
ResultSet rs=null;

CoreHash aCoreHash=new CoreHash();
try{
	String sqlselect="select AirLInesName,PlaneName,FromPlace,ToPlace,DepartDate,Miles,Departtime,returntime,price,id from flightschedule where (fromplace=? and toplace=?) and departdate=?";
	pstflight=con.prepareStatement(sqlselect);
	pstflight.setString(1,aflight.getFromplace());
	pstflight.setString(2,aflight.getToplace());
	pstflight.setString(3,aflight.getDepart());
	
	//	pstHotel.setDouble(2,pricerange);
	
	rs=pstflight.executeQuery();
  Flight aflight1=null;
	int i=0;
	rs=pstflight.executeQuery();
	while(rs.next())
	{
		aflight1=new Flight();
		aflight1.setAirlinesname(rs.getString(1));
		aflight1.setPlanename(rs.getString(2));
		aflight1.setFromplace(rs.getString(3));
		aflight1.setToplace(rs.getString(4));
		aflight1.setDepart(rs.getString(5));
		aflight1.setMiles(Double.parseDouble(rs.getString(6)));
		aflight1.setDeparttime(rs.getString(7));
		aflight1.setReturntime(rs.getString(8));
		aflight1.setPrice(Double.parseDouble(rs.getString(9)));
		aflight1.setId(rs.getInt(10));
		aCoreHash.put(new Integer(i),aflight1);
		 i++;

	}
	return aCoreHash;
}catch(Exception e)
{
	System.out.println(e);
}
return aCoreHash;

}



//This is two wayflight


public CoreHash getTwoWayFlight(Flight aflight)
{PreparedStatement pstflight;
ResultSet rs=null;

CoreHash aCoreHash=new CoreHash();
try{
	String sqlselect="select AirLInesName,PlaneName,FromPlace,ToPlace,DepartDate,returndate,Miles,Departtime,returntime,price from flightschedule where (fromplace=? and toplace=?) and (departdate=? and returndate=?)";
	pstflight=con.prepareStatement(sqlselect);
	pstflight.setString(1,aflight.getFromplace());
	pstflight.setString(2,aflight.getToplace());
	pstflight.setString(3,DateWrapper.parseDate(aflight.getDepart()));
	pstflight.setString(4,DateWrapper.parseDate(aflight.getReturndate()));
	//	pstHotel.setDouble(2,pricerange);
	
	rs=pstflight.executeQuery();
  Flight aflight1=null;
	int i=0;
	while(rs.next())
	{
		aflight1=new Flight();
		aflight1.setAirlinesname(rs.getString(1));
		aflight1.setPlanename(rs.getString(2));
		aflight1.setFromplace(rs.getString(3));
		aflight1.setToplace(rs.getString(4));
		aflight1.setDepart(rs.getString(5));
		aflight1.setReturndate(rs.getString(6));
		aflight1.setMiles(Double.parseDouble(rs.getString(7)));
		aflight1.setDeparttime(rs.getString(8));
		aflight1.setReturntime(rs.getString(9));
		aflight1.setPrice(Double.parseDouble(rs.getString(10)));
		aCoreHash.put(new Integer(i),aflight1);
		 i++;

	}
	return aCoreHash;
}catch(Exception e)
{
	System.out.println(e);
}
return aCoreHash;

}

public boolean addFlightBooking(Flight aflight)
{
PreparedStatement pstflightBooking=null;
boolean flag=false;
try
{
	String insertFlightBookingsql="insert into flightbooking(id,loginname,AirLinesName,PlaneName,FirstName,LastName,Gender,DateOfBirth,FromPlace,ToPlace,Depart,DepartTime,City,State,Country,LandPhoneNo,MobileNo,Price,Email,Visa,miles) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	pstflightBooking=con.prepareStatement(insertFlightBookingsql);
	int i=new AbstractDataAccessObject().getSequenceID("flightbooking","ID");
	//int i=getSequenceID("FlightBooking","id");
        pstflightBooking.setInt(1,i);
	pstflightBooking.setString(2,aflight.getLoginname());
	pstflightBooking.setString(3,aflight.getAirlinesname());
	pstflightBooking.setString(4,aflight.getPlanename());
	pstflightBooking.setString(5,aflight.getFirstname());
	pstflightBooking.setString(6,aflight.getLastname());
	pstflightBooking.setString(7,aflight.getGender());
	pstflightBooking.setString(8,DateWrapper.parseDate(aflight.getDob()));
	pstflightBooking.setString(9,aflight.getFromplace());
	pstflightBooking.setString(10,aflight.getToplace());
	pstflightBooking.setString(11,aflight.getDepart());
	//pstflightBooking.setString(11,"NoBooked");
	pstflightBooking.setString(12,aflight.getDeparttime());
	//pstflightBooking.setString(12,aflight.getReturntime());
	pstflightBooking.setString(13,aflight.getCity());
	pstflightBooking.setString(14,aflight.getState());
	pstflightBooking.setString(15,aflight.getCountry());

	pstflightBooking.setString(16,aflight.getLandno());
	pstflightBooking.setString(17,aflight.getMobileno());
	pstflightBooking.setDouble(18,aflight.getPrice());
	
	pstflightBooking.setString(19,aflight.getEmail());
	pstflightBooking.setString(20,aflight.getVisa());
	pstflightBooking.setDouble(21,aflight.getMiles());
        aflight.setId(i);
	int n=pstflightBooking.executeUpdate();
	if(n>0)
	{
		flag=true;
	}
	return flag;
}catch(Exception e)
{
	e.printStackTrace();
	System.out.println(e);
}
return flag;
}

public CoreHash getBookingDetails(String loginname){
    
    CoreHash acorehash=new CoreHash();
    try{
        String selectsql="Select id from flightbooking where loginname='"+loginname+"' order by id asc";
        Statement stflightschdule=con.createStatement();
        ResultSet rs=stflightschdule.executeQuery(selectsql);
        int i = 0;
        while(rs.next())
        {   i = rs.getInt(1);
            acorehash.put(new Integer(i),i);
        }
        return acorehash;
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return acorehash;
}
public boolean addTwowayFlightBooking(Flight aflight)
{
PreparedStatement pstflightBooking=null;
boolean flag=false;
try
{
	String insertFlightBookingsql="insert into flightbooking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	pstflightBooking=con.prepareStatement(insertFlightBookingsql);
	int i=new AbstractDataAccessObject().getSequenceID("Flightbooking","id");
         pstflightBooking.setInt(1,i);
	pstflightBooking.setString(2,aflight.getLoginname());
        pstflightBooking.setString(3,aflight.getAirlinesname());
	pstflightBooking.setString(4,aflight.getPlanename());
	pstflightBooking.setString(5,aflight.getFirstname());
	pstflightBooking.setString(6,aflight.getLastname());
	pstflightBooking.setString(7,aflight.getGender());
	pstflightBooking.setString(8,DateWrapper.parseDate(aflight.getDob()));
	pstflightBooking.setString(9,aflight.getFromplace());
	pstflightBooking.setString(10,aflight.getToplace());
	pstflightBooking.setString(11,DateWrapper.parseDate(aflight.getDepart()));
	pstflightBooking.setString(12,DateWrapper.parseDate(aflight.getReturndate()));
	pstflightBooking.setString(13,aflight.getDeparttime());
	pstflightBooking.setString(14,aflight.getReturntime());
	pstflightBooking.setString(15,aflight.getCity());
	pstflightBooking.setString(16,aflight.getState());
	pstflightBooking.setString(17,aflight.getCountry());

	pstflightBooking.setString(18,aflight.getLandno());
	pstflightBooking.setString(19,aflight.getMobileno());
	pstflightBooking.setDouble(20,aflight.getPrice());
	
	pstflightBooking.setString(21,aflight.getEmail());
	pstflightBooking.setString(22,aflight.getVisa());
	pstflightBooking.setDouble(23,aflight.getMiles());
aflight.setId(i);
	int n=pstflightBooking.executeUpdate();
	if(n>0)
	{
		flag=true;
	}
	return flag;
}catch(Exception e)
{
	e.printStackTrace();
	System.out.println(e);
}
return flag;
}

public CoreHash viewFlightDetails()
{
CoreHash acorehash=new CoreHash();
try{
	String selectsql="Select * from flightschedule";
Statement stflightschdule=con.createStatement();
ResultSet rs=stflightschdule.executeQuery(selectsql);
Flight aflight1=null;
int i=0;
while(rs.next())
{
	
	aflight1=new Flight();
	aflight1.setId(rs.getInt(1));
 aflight1.setAirlinesname(rs.getString(2));
 aflight1.setPlanename(rs.getString(3));
 aflight1.setFromplace(rs.getString(4));
 aflight1.setToplace(rs.getString(5));
 aflight1.setDepart(DateWrapper.parseDate(rs.getDate(6)));
 aflight1.setReturndate(DateWrapper.parseDate(rs.getDate(7)));
 aflight1.setMiles(Double.parseDouble(rs.getString(8)));
 aflight1.setDeparttime(rs.getString(9));
 aflight1.setReturntime(rs.getString(10));
 aflight1.setPrice(Double.parseDouble(rs.getString(11)));
	acorehash.put(new Integer(i),aflight1);
	 i++;
}
return acorehash;
}catch(Exception e)
{
	e.printStackTrace();

}
return acorehash;
}

public CoreHash viewOneFlightDetails(String planename)
{
CoreHash acorehash=new CoreHash();
try{
	String selectsql="Select * from flightschedule where planename='"+planename+"'";
Statement stflightschdule=con.createStatement();
ResultSet rs=stflightschdule.executeQuery(selectsql);
Flight aflight1=null;
int i=0;
while(rs.next())
{
	
	aflight1=new Flight();
	aflight1.setId(rs.getInt(1));
 aflight1.setAirlinesname(rs.getString(2));
 aflight1.setPlanename(rs.getString(3));
 aflight1.setFromplace(rs.getString(4));
 aflight1.setToplace(rs.getString(5));
 aflight1.setDepart(DateWrapper.parseDate(rs.getDate(6)));
 aflight1.setReturndate(DateWrapper.parseDate(rs.getDate(7)));
 aflight1.setMiles(Double.parseDouble(rs.getString(8)));
 aflight1.setDeparttime(rs.getString(9));
 aflight1.setReturntime(rs.getString(10));
 aflight1.setPrice(Double.parseDouble(rs.getString(11)));
	acorehash.put(new Integer(i),aflight1);
	 i++;
}
return acorehash;
}catch(Exception e)
{
	e.printStackTrace();

}
return acorehash;
}



public boolean addFlights(Flight aflight)
{
	boolean flag=false;
	PreparedStatement pstflight=null;
	try{
		String insertsql="insert into Flightschedule  (`AirLInesName`, `PlaneName`, `FromPlace`, `ToPlace`, `DepartDate`, `ReturnDate`, `Miles`, `Departtime`, `returntime`, `Price`) values(?,?,?,?,?,?,?,?,?,?)";
		pstflight=con.prepareStatement(insertsql);
		pstflight.setString(1,aflight.getAirlinesname());
         pstflight.setString(2,aflight.getPlanename());
         pstflight.setString(3,aflight.getFromplace());
         pstflight.setString(4,aflight.getToplace());
         pstflight.setString(5,aflight.getDepart());
         pstflight.setString(6,aflight.getReturndate());
         pstflight.setDouble(7,aflight.getMiles());
         pstflight.setString(8,aflight.getDeparttime());
         pstflight.setString(9,aflight.getReturntime());
         pstflight.setDouble(10,aflight.getPrice());
	int n=pstflight.executeUpdate();
	if(n>0)
	{
		flag=true;
	}
	return flag;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	return flag;
	}
public boolean updateFlights(Flight aflight)
{
	boolean flag=false;
	PreparedStatement pstflight=null;
	try{
		String updatesql="update flightschedule set fromplace=?,toplace=?,departdate=?,returndate=?,miles=?,departtime=?,returntime=?,price=? where airlinesname=? and planename=?";
		pstflight=con.prepareStatement(updatesql);
		 pstflight.setString(1,aflight.getFromplace());
         pstflight.setString(2,aflight.getToplace());
         pstflight.setString(3,aflight.getDepart());
         pstflight.setString(4,aflight.getReturndate());
         pstflight.setDouble(5,aflight.getMiles());
         pstflight.setString(6,aflight.getDeparttime());
         pstflight.setString(7,aflight.getReturntime());
         pstflight.setDouble(8,aflight.getPrice());
         pstflight.setString(9,aflight.getAirlinesname());
         pstflight.setString(10,aflight.getPlanename());
        
         int n=pstflight.executeUpdate();
	if(n>0)
	{
		flag=true;
		
	}
	return flag;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	return flag;
	}

public String getAirlinesname(String planename)
{
	String airlinesname=null;
PreparedStatement pst=null;
	try
	{
		String selectsql="select AirLInesName from flightschedule where planename=?";
		pst=con.prepareStatement(selectsql);
		pst.setString(1,planename);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			airlinesname=rs.getString(1);
			
		}
		return airlinesname;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return airlinesname;
	
	}

public boolean deleteFlights(Flight aflight)
{
	boolean flag=false;
	PreparedStatement pstflight=null;
	try{
		String updatesql="delete from flightschedule where airlinesname=? and planename=?";
		pstflight=con.prepareStatement(updatesql);
		 pstflight.setString(1,aflight.getAirlinesname());
         pstflight.setString(2,aflight.getPlanename());
        
         int n=pstflight.executeUpdate();
	if(n>0)
	{
		flag=true;
	}
	return flag;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

	return flag;
	}

public double getMiles(String loginid)
{
	PreparedStatement pst=null;
double bal=0;
try
{
	String selectsql="SELECT Sum(bags3)  FROM BagageManageMent where firstname=?";

	pst=con.prepareStatement(selectsql);
	pst.setString(1,loginid);
     ResultSet rs=pst.executeQuery();

while(rs.next())
{
	bal=rs.getDouble(1);
}
return bal;
}
catch(Exception e)
{
	e.printStackTrace();

}
return bal;

}

public boolean updateMemberShip(String loginname,String membertype)
{
	PreparedStatement pst=null;
	boolean flag=false;
	try
	{
		String updatesql="update MemberShip set MemberShip=? where loginname=?";
		pst=con.prepareStatement(updatesql);
	pst.setString(1,loginname);
	pst.setString(2,membertype);
		int n=pst.executeUpdate();
		if(n>0)
		{
			flag=true;
		}
		return flag;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return flag;
	}

public String  verfiyMemeberShip(String loginname)
{
	PreparedStatement pst=null;
	boolean flag=false;
	String name="";
	try
	{
          String selectsql="select membership from membership where loginname=?";
          pst=con.prepareStatement(selectsql);
          pst.setString(1,loginname);
          ResultSet rs=pst.executeQuery();
          while(rs.next())
          {
        	  name=rs.getString(1);
          }
          return name;
}catch(Exception e)
{
	e.printStackTrace();
}
return name;
}
public CoreHash viewBookingDetails(String loginname)
{
	CoreHash acorehash=new CoreHash();
	Statement st=null;
	try{
		st=con.createStatement();
		String selectsql="select AirLinesName,planename,fromplace,toplace,Depart,`Return`,DepartTime,ReturnTime,miles from flightbooking where loginname='"+loginname+"'";
		ResultSet rs=st.executeQuery(selectsql);
		Flight aflight=null;
		int i=0;
		while(rs.next())
		{
			aflight=new Flight();
			
			aflight.setAirlinesname(rs.getString(1));
			aflight.setPlanename(rs.getString(2));
			aflight.setFromplace(rs.getString(3));
			aflight.setToplace(rs.getString(4));
			aflight.setDepart(DateWrapper.parseDate(rs.getDate(5)));
			//aflight.setReturndate(DateWrapper.parseDate(rs.getDate(6)));
			aflight.setDeparttime(rs.getString(7));
			aflight.setReturntime(rs.getString(8));
			aflight.setMiles(rs.getDouble(9));
			acorehash.put(new Integer(i),aflight);
			i++;
		}
		return acorehash;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return acorehash;
	
}
public CoreHash viewAllBookingDetails()
{
	CoreHash acorehash=new CoreHash();
	Statement st=null;
	try{
		st=con.createStatement();
		String selectsql="select id,AirLinesName,planename,fromplace,toplace,Depart,DepartTime,ReturnTime,miles from flightbooking";
		ResultSet rs=st.executeQuery(selectsql);
		Flight aflight=null;
		int i=0;
		while(rs.next())
		{
			aflight=new Flight();
			aflight.setLoginname(rs.getString(1));
			aflight.setAirlinesname(rs.getString(2));
			aflight.setPlanename(rs.getString(3));
			aflight.setFromplace(rs.getString(4));
			aflight.setToplace(rs.getString(5));
			aflight.setDepart(DateWrapper.parseDate(rs.getDate(6)));
			//aflight.setReturndate(DateWrapper.parseDate(rs.getDate(6)));
			aflight.setDeparttime(rs.getString(7));
			aflight.setReturntime(rs.getString(8));
			aflight.setMiles(rs.getDouble(9));
			acorehash.put(new Integer(i),aflight);
			i++;
		}
		return acorehash;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return acorehash;
	
}






}