<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="yjs_3.aspx.cs" Inherits="fxy_vs2010.onstage.yjs_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>研究生导师</title>
    <link type="text/css" rel="Stylesheet" href="/css/yjs.css" />
    <style>
        .style1
        {
            width:100%;
        }
        .style1 td
        {

            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="list">
        <h2>研究生</h2>
        <ul>
            <li><a href="yjs.aspx">培养方案</a></li>
            <li><a href="yjs_1.aspx">实践教学</a></li>
            <li><a href="yjs_2.aspx">教学管理</a></li>
            <li><a href="yjs_3.aspx">研究生导师</a></li>
        </ul>
    </div>
    <div class="content">
        <h2>研究生导师</h2>
        <div style='background:#1661ab;height:5px;width:100%;display:inline-block;'></div>
        <table class="style1" border="1">
            <tr>
                <td>专业授权点</td>
                <td>研究方向</td>
                <td>导师情况</td>
            </tr>
            <tr>
                <td rowspan="5">法律硕士</td>
                <td>刑法学</td>
                <td>秦亚东 黄大威 马珊珊</td>
            </tr>
            <tr>
                <td>民商法学</td>
                <td>袁晓波 沈春女 王立兵 王  睿 崔艳峰</td>
            </tr>
            <tr>
                <td>宪法学与行政法学</td>
                <td>韩冰</td>
            </tr>
            <tr>
                <td>法理学</td>
                <td>李莹</td>
            </tr>
            <tr>
                <td>诉讼法学</td>
                <td>李俊刚</td>
            </tr>
        </table>
        
    </div>
</asp:Content>
