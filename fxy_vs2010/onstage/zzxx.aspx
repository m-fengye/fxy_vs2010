<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zzxx.aspx.cs" Inherits="fxy_vs2010.onstage.zzxx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>站长信息</title>
    <link type="text/css" rel="Stylesheet" href="/css/zzxx.css" />
    <style type="text/css">
        .style1
        {
            margin-top:20px;
            width: 100%;
        }
        .style1 tr
        {
            line-height:45px;
            background:#e6d2d5;
        }
        .style1 tr td:first-child
        {
            text-align:right;
        }
        .style1 tr td img
        {
            display:block;
            margin:auto;
            width:320px;
            -webkit-box-shadow:0 0 10px #7a7374;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="list">
        <h2>站长信息</h2>
    </div>
    <div class="content">
        <h2>站长信息</h2>
        <div style='background:#1661ab;height:5px;width:100%;display:inline-block;'></div>
        <table class="style1" border="1">
            <tr>
                <td>姓名：&nbsp;</td>
                <td>&nbsp;唐宁</td>
                <td rowspan="5"><img alt="图片" src="/images/zzxx.jpg"/></td>
            </tr>
            <tr>
                <td>学号：&nbsp;</td>
                <td>&nbsp;2016742068</td>
            </tr>
            <tr>
                <td>学院：&nbsp;</td>
                <td>&nbsp;计算机与信息工程学院</td>
            </tr>
            <tr>
                <td>专业班级：&nbsp;</td>
                <td>&nbsp;16级网络工程2班</td>
            </tr>
            <tr>
                <td>其他：&nbsp;</td>
                <td>&nbsp;泡芙和月饼是最可爱的喵！！！</td>
            </tr>
        </table>
        
    </div>
</asp:Content>
