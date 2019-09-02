<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #CCCCCC;
        }
    .auto-style11 {
        margin-left: 0px;
    }
    .auto-style12 {
        text-align: right;
        height: 34px;
    }
    .auto-style13 {
        height: 34px;
            width: 177px;
        }
        .auto-style14 {
            width: 31px;
        }
        .auto-style15 {
            width: 33px;
        }
        .auto-style17 {
            border: 2px solid #456879;
            border-radius: 10px;
            margin-left: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="395px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                        <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/iconfinder_f-cross_256_282471.ico" Width="50px" /></a>
                        </td>
                        <td class="auto-style12">
                       <a href="YemekGücelleAdmin.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style11" Height="20px" ImageUrl="~/Resimler/iconfinder_update_172618.ico" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style10">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style14"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                        </strong></td>
                    <td class="auto-style15">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td>YEMEK EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style9">
            <tr>
                <td><strong>YEMEK AD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="259px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="259px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="259px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="259px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style17" Height="33px" OnClick="Button5_Click" Text="Ekle" Width="81px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

