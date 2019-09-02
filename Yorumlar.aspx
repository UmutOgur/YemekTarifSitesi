<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

        .auto-style10 {
            background-color: #CCCCCC;
        }
        .auto-style14 {
            width: 31px;
        }
        .auto-style15 {
            width: 33px;
        }
        .auto-style13 {
        height: 34px;
            width: 177px;
        }
        .auto-style12 {
        text-align: right;
        height: 34px;
    }
    .auto-style11 {
        margin-left: 0px;
    }
        .auto-style16 {
            width: 100%;
            height: 23px;
        }
        </style>

</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td>YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" Height="211px">
            <asp:DataList ID="DataList1" runat="server" Width="395px" Height="208px">
                <ItemTemplate>
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12"><a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/iconfinder_f-cross_256_282471.ico" Width="50px" />
                                </a></td>
                            <td class="auto-style12"><a href="YemekGücelleAdmin.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style11" Height="20px" ImageUrl="~/Resimler/iconfinder_update_172618.ico" Width="50px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px"   />
                    </strong></td>
                <td class="auto-style15">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px"   />
                </td>
                <td>YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
   <asp:DataList ID="DataList2" runat="server" Width="395px" Height="208px">
                <ItemTemplate>
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12"><a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/iconfinder_f-cross_256_282471.ico" Width="50px" />
                                </a></td>
                            <td class="auto-style12"><a href="YemekGücelleAdmin.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style11" Height="20px" ImageUrl="~/Resimler/iconfinder_update_172618.ico" Width="50px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

    </asp:Content>



