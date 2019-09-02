<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            margin-left: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style8"><strong>Tarif Ad </strong>:&nbsp; </td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="txtYapiliş" runat="server" Height="250px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Tarif Öner:</strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:Button ID="btnTarifOner" runat="server" BackColor="#3333CC" CssClass="auto-style9" Font-Bold="False" Font-Italic="False" Font-Size="Large" Height="36px" Text="Tarif Öner" Width="93px" OnClick="btnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

