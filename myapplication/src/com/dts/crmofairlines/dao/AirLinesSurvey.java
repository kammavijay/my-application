package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;




import com.dts.core.util.*;
import com.dts.crmofairlines.model.AirLineSurvey;

public class AirLinesSurvey extends AbstractDataAccessObject {
	Connection con=null;
	public AirLinesSurvey()
	{
		con=getConnection();
	}
	public boolean collectSurvey(AirLineSurvey aairlinesurvey)
	{
		boolean flag=false;
		PreparedStatement 	pstairlinesurvey=null;
	try{
		String insertairlinesql="insert into airlinesurvey values(?,?,?,?)";
	  pstairlinesurvey=con.prepareStatement(insertairlinesql);
		pstairlinesurvey.setString(1,aairlinesurvey.getLoginname());
		pstairlinesurvey.setString(2,aairlinesurvey.getEmailid());
		
		pstairlinesurvey.setString(3,aairlinesurvey.getAirlinesname());
		pstairlinesurvey.setString(4,aairlinesurvey.getReason());
		    int n=pstairlinesurvey.executeUpdate();	
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
	public int countairlinesurvey(AirLineSurvey aairlinesurvey)
	{int n=0;
	boolean flag=false;
	PreparedStatement pstairlinesurvey=null;
	try{
		//String countairlinesurveysql="SELECT Count(*),AirLinesName AS Expr1 FROM flightbooking GROUP BY flightbooking.AirLinesName";
		String countairlinesurveysql="select max(mycount) from " +
		"(SELECT Count(*) as mycount,AirLinesName AS Expr1 FROM " +
		"flightbooking GROUP BY flightbooking.AirLinesName)";

		pstairlinesurvey=con.prepareStatement(countairlinesurveysql);
		ResultSet rs=pstairlinesurvey.executeQuery();
		while(rs.next())
		{
			 n=rs.getInt(1);
			//String name=rs.getString(2);
			System.out.println(n);
			}
	return n;
	}
		catch(Exception e)
		{
		}
		return n;
		}
	public CoreHash getEmailid(String airlinesname)
	{
		PreparedStatement pstairlines=null;
		CoreHash acorehash=new CoreHash();
		try{
			String selectsql="select emailid from airlinesurvey where airlinesname=?";
			pstairlines=con.prepareStatement(selectsql);
			pstairlines.setString(1,airlinesname);
			ResultSet rs=pstairlines.executeQuery();
		int i=0;
			while(rs.next())
			{
				acorehash.put(new Integer(i),rs.getString(1));
				i++;
			}
			return acorehash;
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return acorehash;

	}
	public CoreHash viewServeyDetails()
	{
		CoreHash acorehash=new CoreHash();
		Statement surveyst=null;
		try{
			surveyst=con.createStatement();
			ResultSet rs=surveyst.executeQuery("select * from airlinesurvey");
			AirLineSurvey aairlinesurvey=null;
			int i=0;
			while(rs.next())
			{
				aairlinesurvey=new AirLineSurvey();
				aairlinesurvey.setLoginname(rs.getString(1));
				aairlinesurvey.setEmailid(rs.getString(2));
				aairlinesurvey.setAirlinesname(rs.getString(3));
				aairlinesurvey.setReason(rs.getString(4));
			acorehash.put(new Integer(i),aairlinesurvey);
			i++;
			}
			return acorehash;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return acorehash;
	}
	
	
}
