package com.dts.crmofairlines.dao;
import java.sql.*;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.*;
import com.dts.crmofairlines.model.Service;
public class ServiceHistroy extends AbstractDataAccessObject {

	Connection con;
	public ServiceHistroy()
	{
	con=getConnection();
	}
	public boolean addServiceHistroy(Service aservice)
	{
		PreparedStatement pstguide=null;
		boolean flag=false;
		try{
			String insertsql="insert into servicehistroy values(?,?,?,?,?,?)";
		
			 pstguide=con.prepareStatement(insertsql);
			 
			 pstguide.setString(1,aservice.getAirlinename());
			 pstguide.setString(2,aservice.getPlanename());
				
			 pstguide.setString(3,aservice.getStartdate());
			 pstguide.setString(4,aservice.getInnegratedby());
			 pstguide.setString(5,aservice.getUsingtechnolgy());
			 pstguide.setString(6,aservice.getCapacity());
			 int n=pstguide.executeUpdate();
			 if(n>0)
			 {
				 flag=true;
			 }
			 pstguide.close();
			 con.close();
			 return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			 
			 
			 
		return flag;	 
	}
	 public CoreHash viewSerivceHistroy(String airlinesname,String planename)
 {
	 CoreHash aCoreHash=new CoreHash();
	 PreparedStatement pst=null;
	 Service aservice=null;
	 try{
		 String servicesql="select * from servicehistroy where airlinesname=? and planename=?";
		 pst=con.prepareStatement(servicesql);
		 pst.setString(1,airlinesname);
		 pst.setString(2,planename);
		 ResultSet rs=pst.executeQuery();
		int i=0;
		 while(rs.next())
		 {
			 aservice=new Service();
			 aservice.setAirlinename(rs.getString(1));
			 aservice.setPlanename(rs.getString(2));
			
			 aservice.setStartdate(rs.getString(3));
			 aservice.setInnegratedby(rs.getString(4));
			 aservice.setUsingtechnolgy(rs.getString(5));
			 aservice.setCapacity(rs.getString(6));
			  aCoreHash.put(new Integer(i),aservice);
			 i++;
		 }
		 return aCoreHash;
	 }catch(Exception e)
	 {
		 e.printStackTrace();
		 
	 }
		return aCoreHash;
 }
	
	 
	 public CoreHash viewAirLineSerivceHistroy(String airlinesname)
	 {
		 CoreHash aCoreHash=new CoreHash();
		 PreparedStatement pst=null;
		 Service aservice=null;
		 try{
			 String servicesql="select * from servicehistroy where airlinesname=?";
			 pst=con.prepareStatement(servicesql);
			 pst.setString(1,airlinesname);
			 ResultSet rs=pst.executeQuery();
			int i=0;
			 while(rs.next())
			 {
				 aservice=new Service();
				 aservice.setAirlinename(rs.getString(1));
				 aservice.setPlanename(rs.getString(2));
				
				 aservice.setStartdate(rs.getString(3));
				 aservice.setInnegratedby(rs.getString(4));
				 aservice.setUsingtechnolgy(rs.getString(5));
				 aservice.setCapacity(rs.getString(6));
				  aCoreHash.put(new Integer(i),aservice);
				 i++;
			 }
			 return aCoreHash;
		 }catch(Exception e)
		 {
			 e.printStackTrace();
			 
		 }
			return aCoreHash;
	 }
				 
	 public CoreHash viewAirLines()
	 {
		 CoreHash aCoreHash=new CoreHash();
		 PreparedStatement pst=null;
		 Service aservice=null;
		 try{
			 String servicesql="select AirLinesName from servicehistroy";
			 pst=con.prepareStatement(servicesql);
			 ResultSet rs=pst.executeQuery();
			int i=0;
			 while(rs.next())
			 {
				 aservice=new Service();
				 aservice.setAirlinename(rs.getString(1)); 
				 aCoreHash.put(new Integer(i),aservice);
				 i++;
			 }
			 return aCoreHash;
		 }catch(Exception e)
		 {
			 e.printStackTrace();
			 
		 }
			return aCoreHash;
	 }
		public boolean addCardDetails(String loginname,String cardtype)
		{
			boolean flag=false;
			Statement st=null;
			try{
				st=con.createStatement();
			int n=st.executeUpdate("insert into MemberShip values('"+loginname+"','"+cardtype+"')");
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
	 
		public boolean delteCardDetails(String loginname)
		{
			boolean flag=false;
			Statement st=null;
			try{
				st=con.createStatement();
			int n=st.executeUpdate("delete from MemberShip where loginname='"+loginname+"'");
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
	 
	}
