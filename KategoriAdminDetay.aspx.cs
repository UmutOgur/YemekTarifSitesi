using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];

        if (Page.IsPostBack == false) { 
        
        SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader oku = komut.ExecuteReader();
        while (oku.Read())
        {
            TextBox1.Text = oku[1].ToString();
            TextBox2.Text = oku[2].ToString();
        }
        bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler Set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}