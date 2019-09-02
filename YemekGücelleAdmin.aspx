<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekGücelleAdmin.aspx.cs" Inherits="YemekGücelleAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td>YEMEK ADI:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MALZEMELER:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YEMEK TARİFİ:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="267px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Güncelle" Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>

