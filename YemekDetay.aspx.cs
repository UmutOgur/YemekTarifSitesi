﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    String yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];
        SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekid=@p1 ", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader oku = komut.ExecuteReader();
        while (oku.Read())
        {
            Label3.Text = oku[0].ToString();
        }
        bgl.baglanti().Close();


        SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader oku2 = komut2.ExecuteReader();
        DataList2.DataSource = oku2;
        DataList2.DataBind();
        bgl.baglanti().Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}