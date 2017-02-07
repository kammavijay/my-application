package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
import java.io.*;
import com.dts.core.util.CoreHash;
import com.dts.crmofairlines.model.AirlineBean;
public class AirlineName extends AbstractDataAccessObject {
Connection con=null;
    public AirlineName()
    {
        con=getConnection();
    }

    public CoreHash getAirlines()
    {
            CoreHash acorehash=new CoreHash();
            AirlineBean aFlight=null;
            Statement stFlight=null;
            try{
             String selectsql="select * from airlinenames  order by name desc";
             stFlight=con.createStatement();
             ResultSet rs=stFlight.executeQuery(selectsql);
             int i=0;
             while(rs.next())
             {
                    aFlight=new AirlineBean();
                    aFlight.setId(rs.getInt(1));
                    aFlight.setName(rs.getString(2));
                    acorehash.put(new Integer(i),aFlight);
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

