using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel5.Visible = false;
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];
            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = oku2;
            DropDownList1.DataBind();
        }

        //Yemek Listesi
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        if (islem=="sil")
        {
            SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler Where Yemekid=@p1 ", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

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
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        //Yemek Ekleme
        SqlCommand komut3 = new SqlCommand("insert into TBL_YEMEKLER (yemekad,yemekmalzeme,yemektarif,kategoriid) Values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Kategori Ekleme   
        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
            

    }
}