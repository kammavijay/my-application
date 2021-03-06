package com.dts.core.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.util.LoggerManager;
import java.util.Properties;

public class AbstractDataAccessObject 
{
	Connection con;

	static Properties props;
	/**
	 * @return the props
	 */
	public Properties getProperties() {
		return props;
	}

	/**
	 * @param props the props to set
	 */
	public void setProperties(Properties props) {
		this.props = props;
	}
	
        public Connection getConnection()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines","root","root");
           
			/* String JNDI=p.getProperty("JNDI_NAME");
       		InitialContext ic;
			try 
			{
				ic = new InitialContext();
				DataSource ds=(DataSource)ic.lookup(JNDI);
            	con=ds.getConnection();
			} catch (NamingException ne) {
				LoggerManager.writeLogWarning(ne);
			}*/
		}
		catch (ClassNotFoundException cnf)
		{
			LoggerManager.writeLogWarning(cnf);
		}
		catch (SQLException se)
		{
			LoggerManager.writeLogWarning(se);
		}
		return con;
	}
	
	// get Sequence ID
	public int getSequenceID(String tableName, String pkid)
	{
		int id = 0;
		try
		{
			con = getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select max("+pkid+") from "+tableName); 
			if(rs.next())
				id=rs.getInt(1);
			id++;
		}
		catch(SQLException se)
		{
			LoggerManager.writeLogWarning(se);
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(SQLException se)
			{
			    LoggerManager.writeLogWarning(se);	
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return id;
	}
}
