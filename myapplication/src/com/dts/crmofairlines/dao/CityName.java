package com.dts.crmofairlines.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
import java.io.*;
import com.dts.core.util.CoreHash;
import com.dts.crmofairlines.model.CityBean;
public class CityName extends AbstractDataAccessObject {
Connection con=null;
    public CityName()
    {
        con=getConnection();
    }

    public CoreHash getCities()
    {
            CoreHash acorehash=new CoreHash();
            CityBean aCity=null;
            Statement stCity=null;
            try{
             String selectsql="select * from cities order by city desc";
             stCity=con.createStatement();
             ResultSet rs=stCity.executeQuery(selectsql);
             int i=0;
             while(rs.next())
             {
                    aCity=new CityBean();
                    aCity.setId(rs.getInt(1));
                    aCity.setCity(rs.getString(2));
                    acorehash.put(new Integer(i),aCity);
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

