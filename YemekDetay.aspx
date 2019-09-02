<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            background-color: #FF6699;
        }
        .auto-style11 {
            background-color: #999999;
        }
        .auto-style12 {
            font-size: large;
            background-color: #FFFF99;
        }
        .auto-style13 {
            border: 3px double #003DF5;
            margin-left: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11"><span class="auto-style12">YORUM YAPMA PANELİ</span></span><br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td>Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mail</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Yorumunuz</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="35px" Text="Yorum Yap" Width="122px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>

