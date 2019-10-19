<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="fxy_vs2010.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>首页</title>
    <link type="text/css" rel="Stylesheet" href="/css/index.css" />

    <script type="text/javascript" src="/js/script.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="flash">
        <div id="prev"></div>
        <div id="next"></div>
        <ul id="play">
            <li style="display: block;"><img src="/images/1.jpg" alt="" /></li>
            <li><img src="/images/2.jpg" alt="" /></li>
            <li><img src="/images/3.jpg" alt="" /></li>
            <li><img src="/images/4.jpg" alt="" /></li>
            <li><img src="/images/5.jpg" alt="" /></li>
            <li><img src="/images/6.jpg" alt="" /></li>
            <li><img src="/images/7.jpg" alt="" /></li>
            <li><img src="/images/8.jpg" alt="" /></li>
        </ul>
        <ul id="button">
            <li><div style="background: #A10000;"></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
    </div>
    <form id="form1" runat="server">
        <div class='yqlj'>
            <h2>友情链接</h2>
            <ul>
                <asp:PlaceHolder ID="PHyqlj" runat="server">

                </asp:PlaceHolder>
            </ul>
        </div>
        <div class='xyxw'>
            <h2>学院新闻</h2>
            <ul>
                <asp:PlaceHolder ID="PHxyxw" runat="server">

                </asp:PlaceHolder>
            </ul>
        </div>
        <div class='dwgk'>
            <h2>党务公开</h2>
            <ul>
                <asp:PlaceHolder ID="PHdwgk" runat="server">

                </asp:PlaceHolder>
            </ul>
        </div>
        <div class='gkxx'>
            <h2>公开信息</h2>
            <ul>
                <asp:PlaceHolder ID="PHgkxx" runat="server">

                </asp:PlaceHolder>
            </ul>
        </div>
    </form>
</asp:Content>
