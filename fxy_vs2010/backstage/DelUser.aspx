<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/bSite.Master" AutoEventWireup="true" CodeBehind="DelUser.aspx.cs" Inherits="fxy_vs2010.backstage.DelUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="Stylesheet" href="/css/bFriendshipLink.css" />
    <title>管理用户</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="title">删除用户</h2>
    <form id="form2" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" Width="600px">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="用户名称" />
                <asp:BoundField DataField="Password" HeaderText="密    码" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="DelUser.ashx?ID={0}" HeaderText="操作" Text="删除" />
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" 
                Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
    </form>
</asp:Content>
