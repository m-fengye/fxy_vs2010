﻿<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/bSite.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="fxy_vs2010.backstage.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="Stylesheet" href="/css/bFriendshipLink.css" />
    <title>添加用户</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="title">添加用户</h2>
    <form id="form1" runat="server">
        <p>用户名：<asp:TextBox ID="txtUserName" runat="server" Font-Size="Larger"></asp:TextBox></p>
        <p>密&nbsp;码：<asp:TextBox ID="txtPassword" runat="server" Font-Size="Larger"></asp:TextBox></p>
        <asp:Button ID="btnSub" runat="server" Text="添加" Font-Size="Larger" 
            onclick="btnSub_Click" />
    </form>
</asp:Content>
