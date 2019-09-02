<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 40px;
    }
    .auto-style9 {
        margin-left: 80px;
    }
    .auto-style10 {
        margin-left: 120px;
    }
    .auto-style11 {
        width: 115px;
    }
    .auto-style13 {
        font-size: xx-large;
    }
        .auto-style15 {
            border: 3px double #003DF5;
            margin-left: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style13">&nbsp;MESAJ PANELİ</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Ad Soyad</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Konu:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox3" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mesaj:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="Gönder" Width="104px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

