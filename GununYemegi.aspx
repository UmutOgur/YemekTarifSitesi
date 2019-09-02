<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        margin-left: 80px;
    }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            margin-left: 40px;
        }
    .auto-style10 {
        margin-left: 120px;
    }
    .auto-style11 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style8" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<strong>MALZEME</strong>:&nbsp;
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<strong>TARİF</strong>:&nbsp;
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="209px" Width="368px" ImageUrl="~/Resimler/yelpaze-patates-7 (1).jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;<table class="auto-style1">
                            <tr>
                                <td>
                                    <table class="auto-style1">
                                        <tr>
                                            <td>&nbsp;<strong>Puan</strong>:
                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                                &nbsp;</td>
                                            <td class="auto-style11"><strong>Ekleme Tarihi</strong>:
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

