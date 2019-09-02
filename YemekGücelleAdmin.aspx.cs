using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekGücelleAdmin : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();

    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
             // Yemek Listeleme
            id = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();
                TextBox3.Text = oku[3].ToString();

              

            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
        }
    }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Yemek Güncelleme
        SqlCommand komut3 = new SqlCommand("update TBL_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.Parameters.AddWithValue("@p5", id);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}