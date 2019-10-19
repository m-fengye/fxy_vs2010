<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/bSite.Master" AutoEventWireup="true" CodeBehind="AddFriendshipLink.aspx.cs" Inherits="fxy_vs2010.backstage.AddFriendshipLink1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="Stylesheet" href="/css/bFriendshipLink.css" />
    <title>添加友情链接</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="title">添加链接</h2>
    <form id="form1" runat="server">
        <p>链接名称：<asp:TextBox ID="txtLinkName" runat="server" Font-Size="Larger"></asp:TextBox></p>
        <p>链接地址：<asp:TextBox ID="txtLinkAddress" runat="server" Font-Size="Larger"></asp:TextBox></p>
        <asp:Button ID="btnSub" runat="server" Text="添加" Font-Size="Larger" 
            onclick="btnSub_Click" />
    </form>
</asp:Content>
