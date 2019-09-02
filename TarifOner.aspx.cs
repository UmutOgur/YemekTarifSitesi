using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sqlsinifi baglanti = new sqlsinifi();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapılış,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", baglanti.baglanti());
        komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
        komut.Parameters.AddWithValue("@t3", txtYapiliş.Text);
        komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komut.Parameters.AddWithValue("@t5", txtTarif.Text);
        komut.Parameters.AddWithValue("@t6", txtMail.Text);
        komut.ExecuteNonQuery();
        baglanti.baglanti().Close();
        Response.Write("Tarifiniz Alınmıştır"); 
    }
}