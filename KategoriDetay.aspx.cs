using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    sqlsinifi blg = new sqlsinifi();
    string kategorııd = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategorııd = Request.QueryString["Kategoriid"];
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler Where Kategoriid=@p1", blg.baglanti());
        komut.Parameters.AddWithValue("@p1", kategorııd);
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
       
    }
}