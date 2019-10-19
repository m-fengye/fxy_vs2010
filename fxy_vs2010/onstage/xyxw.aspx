<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="xyxw.aspx.cs" Inherits="fxy_vs2010.onstage.xyxw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>学院新闻</title>
    <link type="text/css" rel="Stylesheet" href="/css/xyxw.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="list">
        <h2>学院新闻</h2>
    </div>
    <div class="content">
        <h2>学院新闻</h2>
        <div style='background:#1661ab;height:5px;width:100%;display:inline-block;'></div>
        <ul>
            <asp:PlaceHolder ID="PHxyxw" runat="server">
            
            </asp:PlaceHolder>
        </ul>
        
    </div>
</asp:Content>
