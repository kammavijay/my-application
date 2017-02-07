package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
import java.io.*;
import com.dts.core.util.CoreHash;
import com.dts.crmofairlines.model.FoodBean;
public class TypesOfFood extends AbstractDataAccessObject {
Connection con=null;
	public TypesOfFood()
{
		con=getConnection();
		
}
	public boolean addFoods(FoodBean aFood)
	{
		boolean flag=false;
		PreparedStatement pstFood=null;
		try{
		String insertsql="insert into TypesofFood values(?,?,?,?)";
		pstFood=con.prepareStatement(insertsql);
		pstFood.setString(1,aFood.getRegeion());
		pstFood.setString(2,aFood.getTypesoffood1());
		pstFood.setString(3,aFood.getTypesoffood2());
		pstFood.setString(4,aFood.getTypesoffood3());
		int n=pstFood.executeUpdate();
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
	 
	public boolean updateFood(FoodBean aFood)
	{
		boolean flag=false;
		PreparedStatement pstFood=null;
		try{
		String updatesql="update TypesofFood set TypeOfFood1=?,TypeOfFood2=?,TypeOfFood3=? where regeion=?";
		pstFood=con.prepareStatement(updatesql);
		pstFood.setString(1,aFood.getTypesoffood1());
		pstFood.setString(2,aFood.getTypesoffood2());
		pstFood.setString(3,aFood.getTypesoffood3());
		pstFood.setString(4,aFood.getRegeion());
		int n=pstFood.executeUpdate();
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
	public boolean deleteFood(FoodBean aFood)
	{
		boolean flag=false;
		PreparedStatement pstFood=null;
		try{
		String deletesql="delete from typesofFood  where regeion=?";
		pstFood=con.prepareStatement(deletesql);
		pstFood.setString(1,aFood.getRegeion());
		
		int n=pstFood.executeUpdate();
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
	
	
	public CoreHash viewFoods(String regeion)
	{
		CoreHash acorehash=new CoreHash();
		FoodBean aFood=null;
	Statement stFood=null;
		try{
	         String selectsql="select * from typesofFood where regeion='"+regeion+"'";
	         stFood=con.createStatement();
	         ResultSet rs=stFood.executeQuery(selectsql);
	         int i=0;
	         while(rs.next())
	         {
	        	 aFood=new FoodBean();
	        	 aFood.setRegeion(rs.getString(1));
	        	 aFood.setTypesoffood1(rs.getString(2));
	        	 aFood.setTypesoffood2(rs.getString(3));
	        	 aFood.setTypesoffood3(rs.getString(4));
	        	 acorehash.put(new Integer(i),aFood);
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
	public CoreHash viewAllFoods()
	{
		CoreHash acorehash=new CoreHash();
		FoodBean aFood=null;
	Statement stFood=null;
		try{
	         String selectsql="select * from typesofFood";
	         stFood=con.createStatement();
	         ResultSet rs=stFood.executeQuery(selectsql);
	         int i=0;
	         while(rs.next())
	         {
	        	 aFood=new FoodBean();
	        	 aFood.setRegeion(rs.getString(1));
	        	 aFood.setTypesoffood1(rs.getString(2));
	        	 aFood.setTypesoffood2(rs.getString(3));
	        	 aFood.setTypesoffood3(rs.getString(4));
	        	 acorehash.put(new Integer(i),aFood);
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

