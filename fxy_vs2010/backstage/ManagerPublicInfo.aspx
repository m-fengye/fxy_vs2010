<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/bSite.Master" AutoEventWireup="true" CodeBehind="ManagerPublicInfo.aspx.cs" Inherits="fxy_vs2010.backstage.ManagerPublicInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="Stylesheet" href="/css/bFriendshipLink.css" />
    <title>管理信息</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="title">管理信息</h2>
    <form id="form3" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" Width="1000px">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="标题" />
                <asp:BoundField DataField="Author" HeaderText="作者" />
                <asp:BoundField DataField="Time" HeaderText="时间" />
                <asp:BoundField DataField="LookNum" HeaderText="浏览量" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="EditPublicInfo.aspx?ID={0}" HeaderText="操作" Text="编辑" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="DelPublicInfo.ashx?ID={0}" HeaderText="操作" Text="删除" />
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" 
                Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
    </form>
</asp:Content>
