using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];


        }
        SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        // İşlem Silme  
        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


        Panel2.Visible = false;
        Panel5.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel2.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values(@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        
    }
}