<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/bSite.Master" AutoEventWireup="true" CodeBehind="DelFriendshipLink.aspx.cs" Inherits="fxy_vs2010.backstage.DelFriendshipLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="Stylesheet" href="/css/bFriendshipLink.css" />
    <title>管理友情链接</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="title">删除链接</h2>
    <form id="form2" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" Width="600px">
            <Columns>
                <asp:BoundField DataField="LinkName" HeaderText="链接名称" />
                <asp:BoundField DataField="LinkAddress" HeaderText="链接地址" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="DelFriendshipLink.ashx?ID={0}" HeaderText="操作" Text="删除" />
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" 
                Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
    </form>
    
</asp:Content>
