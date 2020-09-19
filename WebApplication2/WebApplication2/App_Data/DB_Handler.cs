using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <For the Database Handling>
/// Summary description for DB_Handler

public class DB_Handler
{
    int rc;

    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    String cstr, qry;
    Object obj;

    public DB_Handler()
    {
        cstr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Akshay\Desktop\TASK\WebApplication2\WebApplication2\App_Data\kitty.mdf;Integrated Security=True;User Instance=True";
       
        conn = new SqlConnection(cstr);
    }

    public int execData(String qry)
    {
        cmd = new SqlCommand(qry, conn);
        conn.Open();
        rc = cmd.ExecuteNonQuery();
        conn.Close();
        return rc;

    }

    public DataSet fetchData(String qry)
    {
        da = new SqlDataAdapter(qry, conn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public object checkLogin(String qry)
    {
        cmd = new SqlCommand(qry, conn);
        conn.Open();
        obj = cmd.ExecuteScalar();
        return obj;

    }

}