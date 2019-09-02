using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class sqlsinifi
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-T2GKN5C\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;");
        baglan.Open();
        return baglan;
    }
}