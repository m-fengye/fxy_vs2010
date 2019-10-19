<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="fxy_vs2010.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="/css/login.css" />
    <title>登录管理系统</title>
</head>
<body onload="changeBackground();">
    <!-- 网页背景 -->
    <div id="bg">
        <div id="bg1" class="bgdiv" style="background-image: url(/images/1.jpg);"></div>
        <div id="bg2" class="bgdiv" style="background-image: url(/images/2.jpg);"></div>
        <div id="bg3" class="bgdiv" style="background-image: url(/images/3.jpg);"></div>
    </div>
    <!-- 登录控件 -->
    <form runat="server" id="loginbg">
        <h2>管理员登录</h2>
        <p>用户名：<input type="text" class="form-control" placeholder="用户名" id="txtUserName" runat="server"/></p>
        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" class="form-control" placeholder="密码" id="txtPassword" runat="server"/></p>
        <input type="checkbox" id="chkRememberMe" runat="server"/>记住我&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click"/>
    </form>



    <!--Load Jquery-->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script>
        /*更改背景图片*/
        var changeBackgroundT;
        var n = 0; //图片序号
        var divcount = $('#bg').children('div').length;
        function changeBackground() {
            changeBackgroundT = setTimeout("changeBackground()", 10000);
            n = (n % divcount) + 1;
            //前一张图片淡出
            $("#bg" + String(n)).fadeToggle(3000);
            $("#bg" + String(n)).css("z-index", "-1");
            //当前显示图片
            $("#bg" + String((n % divcount) + 1)).css("z-index", "-2");
            $("#bg" + String((n % divcount) + 1)).css("display", "block");
            //下一张作为底图
            $("#bg" + String(((n + 1) % divcount) + 1)).css("z-index", "-3");
        }
    </script>
</body>
</html>
