package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;

import com.dts.core.util.LoggerManager;
import com.dts.crmofairlines.model.BagageProfile;

import java.sql.*;
public class BagageManagement extends AbstractDataAccessObject
{
	Connection con;
	public BagageManagement()
	{
		con=getConnection();
	}
	//
	public boolean addBagageManagement(BagageProfile abaggageprofile)
	{ 
		boolean flag=false;
	PreparedStatement pstBagageManageMent=null;
		try{
		
			String iBagageManageMentsql="insert into BagageManageMent values(?,?,?,?,?)";
			 pstBagageManageMent=con.prepareStatement(iBagageManageMentsql);
			pstBagageManageMent.setString(1,abaggageprofile.getAirlinesname());
			
			System.out.println(abaggageprofile.getAirlinesname());
			pstBagageManageMent.setString(2,abaggageprofile.getBagtype1cost());
			pstBagageManageMent.setString(3,abaggageprofile.getBagtype2cost());
			pstBagageManageMent.setString(4,abaggageprofile.getBagtype3cost());
			pstBagageManageMent.setString(5,abaggageprofile.getBagtype4cost());
			int n=pstBagageManageMent.executeUpdate();
			if(n>0)
			{ 
				flag=true;
				}return flag;
		}catch(Exception e)
		{
			LoggerManager.writeLogSevere(e);
			
		}finally{
			try{
				pstBagageManageMent.close();
				con.close();
				}
			catch(SQLException e1)
				{
					LoggerManager.writeLogSevere(e1);
				}		
			}
		return flag;
		}
		
	
	
	//
	public boolean updateBaggageCost(BagageProfile abaggageprofile)
	{
		boolean flag=false;
	PreparedStatement pstBagageManageMent=null;
	try{
		
		String iBagageManageMentsql="update BagageManageMent set Bags1to2=?,bags3=?,bags4to10=?,bagsabove10=? where airlinesname=?";
		 pstBagageManageMent=con.prepareStatement(iBagageManageMentsql);
			pstBagageManageMent.setString(1,abaggageprofile.getBagtype1cost());
			pstBagageManageMent.setString(2,abaggageprofile.getBagtype2cost());
			pstBagageManageMent.setString(3,abaggageprofile.getBagtype3cost());
			pstBagageManageMent.setString(4,abaggageprofile.getBagtype4cost());
			pstBagageManageMent.setString(5,abaggageprofile.getAirlinesname());
			
			int n=pstBagageManageMent.executeUpdate();
		if(n>0)
		{ 
			flag=true;
			}return flag;
	}catch(Exception e)
	{
		LoggerManager.writeLogSevere(e);
		
	}finally{
		try{
			pstBagageManageMent.close();
			con.close();
			}
		catch(SQLException e1)
			{
				LoggerManager.writeLogSevere(e1);
			}		
		}
	return flag;
	}
	



	
	
		public CoreHash viewBaggageDetails(String s)
	{
		CoreHash aCoreHash = new CoreHash();
	
		BagageProfile aporfile;
		try{
			String selectsql="select * from bagagemanagement where airlinesname='"+s+"'";
			Statement stbaggage=con.createStatement();
			ResultSet rs=stbaggage.executeQuery(selectsql);
			int i=0;
			while(rs.next())
			{
				 aporfile=new BagageProfile();
				 aporfile.setAirlinesname(rs.getString(1));
				 aporfile.setBagtype1cost(rs.getString(2));
				 aporfile.setBagtype2cost(rs.getString(3));
				 aporfile.setBagtype3cost(rs.getString(4));
				 aporfile.setBagtype4cost(rs.getString(5));
				 aCoreHash.put(new Integer(i),aporfile);
i++;
			}
			return aCoreHash;
	}catch(Exception e)
	{
		e.printStackTrace();
		
	}
	return aCoreHash;
	}//
	public CoreHash viewAllBaggageDetails()
	{
		CoreHash aCoreHash = new CoreHash();
		
		BagageProfile aporfile;
		try{
			String selectsql="select * from bagagemanagement";
			Statement stbaggage=con.createStatement();
			ResultSet rs=stbaggage.executeQuery(selectsql);
			int i=0;
			while(rs.next())
			{
				 aporfile=new BagageProfile();
				//System.out.println("this is AirLinesname"+rs.getString(1));
				 aporfile.setAirlinesname(rs.getString(1));
				 
				 aporfile.setBagtype1cost(rs.getString(2));
				 //System.out.println("this is AirLinesname"+rs.getString(1));
				 
				 aporfile.setBagtype2cost(rs.getString(3));
				 aporfile.setBagtype3cost(rs.getString(4));
				 aporfile.setBagtype4cost(rs.getString(5));
				 aCoreHash.put(new Integer(i),aporfile);
				 i++;
			}
			return aCoreHash;
	}catch(Exception e)
	{
		e.printStackTrace();
		
	}
	return aCoreHash;
	}
	public CoreHash viewOneBaggageDetails(String loginname)
	{
		CoreHash aCoreHash = new CoreHash();
		
		BagageProfile aporfile;
		try{
			String selectsql="select * from BaggageDetails where loginname='"+loginname+"'";
			Statement stbaggage=con.createStatement();
			ResultSet rs=stbaggage.executeQuery(selectsql);
			int i=0;
			while(rs.next())
			{
				 aporfile=new BagageProfile();
				//System.out.println("this is AirLinesname"+rs.getString(1));
				 aporfile.setAirlinesname(rs.getString(2));
				 
				 
				 //System.out.println("this is AirLinesname"+rs.getString(1));
				 
				 aporfile.setBagname(rs.getString(3));
				 aporfile.setLoginname(rs.getString(4));
					
				 aporfile.setNoofbags(rs.getDouble(5));
				 aporfile.setTotalcost(rs.getDouble(6));
				 aCoreHash.put(new Integer(i),aporfile);
				 i++;
			}
			return aCoreHash;
	}catch(Exception e)
	{
		e.printStackTrace();
		
	}
	return aCoreHash;
	}

	
	
public boolean loadingBagage(BagageProfile aprofile)
{
	boolean flag=false;
	PreparedStatement pstbagage=null;
	try{
		pstbagage=con.prepareStatement("insert into BaggageDetails values(?,?,?,?,?,?)");
		pstbagage.setString(1,aprofile.getBid());
                pstbagage.setString(2,aprofile.getAirlinesname());
		pstbagage.setString(3,aprofile.getBagname());
		pstbagage.setString(4,aprofile.getLoginname());
		pstbagage.setDouble(5,aprofile.getNoofbags());
		pstbagage.setDouble(6,aprofile.getTotalcost());
int n=pstbagage.executeUpdate();
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
public boolean deleteBagage(BagageProfile aprofile)
{
	boolean flag=false;
	PreparedStatement pstbagage=null;
	try{
		String deletesql="delete from baggagedetails where BaggageName=?";
		pstbagage=con.prepareStatement(deletesql);
		pstbagage.setString(1,aprofile.getBagname());
		
		
int n=pstbagage.executeUpdate();
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
public double get2bagsCost(String airlinesname)
{
double cost=0;
Statement pst=null;
try{
	pst=con.createStatement();
	ResultSet rs=pst.executeQuery("select bags3 from BagageManageMent where AirLinesName='"+airlinesname+"'");
while(rs.next())
{
	 cost=rs.getDouble(1);
}
return  cost;
}
catch(Exception e)
{e.printStackTrace();
}
return cost;
}
public double get3bagsCost(String airlinesname)
{
double cost=0;
Statement pst=null;
try{
	pst=con.createStatement();
	ResultSet rs=pst.executeQuery("select bags3 from BagageManageMent where AirLinesName='"+airlinesname+"'");
	
	while(rs.next())
{
	 cost=rs.getDouble(1);
	 System.out.println(cost);
}
System.out.println(cost);
return  cost;
}
catch(Exception e)
{e.printStackTrace();
}
return cost;
}
public double get4bagsCost(String airlinesname)
{
double cost=0;
Statement pst=null;
try{
	pst=con.createStatement();
	ResultSet rs=pst.executeQuery("select bags4to10 from BagageManageMent where AirLinesName='"+airlinesname+"'");
while(rs.next())
{
	 cost=rs.getDouble(1);
}
return  cost;
}
catch(Exception e)
{e.printStackTrace();
}
return cost;
}
public double getabove10bagsCost(String airlinesname)
{
double cost=0;
Statement pst=null;
try{
	pst=con.createStatement();
	ResultSet rs=pst.executeQuery("select bagsabove10 from BagageManageMent where AirLinesName='"+airlinesname+"'");
while(rs.next())
{
	 cost=rs.getDouble(1);
}
return  cost;
}
catch(Exception e)
{e.printStackTrace();
}
return cost;
}

}