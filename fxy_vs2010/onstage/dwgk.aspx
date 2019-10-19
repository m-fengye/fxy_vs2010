<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="dwgk.aspx.cs" Inherits="fxy_vs2010.onstage.dwgk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>党务公开</title>
    <link type="text/css" rel="Stylesheet" href="/css/dwgk.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="list">
        <h2>党务公开</h2>
    </div>
    <div class="content">
        <h2>党务公开</h2>
        <div style='background:#1661ab;height:5px;width:100%;display:inline-block;'></div>
        <ul>
            <asp:PlaceHolder ID="PHdwgk" runat="server">
            
            </asp:PlaceHolder>
        </ul>
        
    </div>
</asp:Content>


