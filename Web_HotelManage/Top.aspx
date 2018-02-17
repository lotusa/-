<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>主页头部</title>
    <link href="css/Base.css" rel="stylesheet" type="text/css" />

       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
        <!-- Bootstrap core CSS -->
    <%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="JavaScript/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="TopBack">
            
            <div class="TopTitle">挂单系统</div>
            <div class="TopMes">
                登录用户：<%=userName%>&nbsp;&nbsp;所属角色：<%=roleName %>&nbsp;
                <br/>
                当前日期：<%=DateTime.Now.ToLongDateString()%>&nbsp;<a href="UpdatePwd.aspx" target="main"
                    style="color: #fff;">[修改密码]</a>&nbsp;&nbsp;
           
                <asp:LinkButton ID="LBQuit" runat="server" Font-Bold="True" ForeColor="White" OnClick="LBQuit_Click"
                    OnClientClick='return confirm("你确定退出系统吗？") '>[退出]</asp:LinkButton>
            </div>
                
        </div>
       
    </form>
            <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="JavaScript/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="Scripts/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="JavaScript/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="JavaScript/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
