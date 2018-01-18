<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>挂单系统</title>
    <script>
        function check() {
            if (document.getElementById("txtUserName").value == "") {
                alert("账号不能为空！");
                document.getElementById("txtUserName").focus();
                return false;
            }

            if (document.getElementById("txtPwd").value == "") {
                alert("密码不能为空！");
                document.getElementById("txtPwd").focus();
                return false;
            }
        }
    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <!-- Bootstrap core CSS -->
    <%--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="JavaScript/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="top">
    </div>
    <div id="login" class="container theme-showcase" role="main">
        <div class="jumbotron">
            <h2>众生欢喜佛欢喜</h2>
            <p>请输入登陆信息</p>
        </div>
        <div class="row">
            <div class="col-md-offset-4 col-md-4">

<%--                <div id="login_box">

                    <div class="content">--%>
                        <div class="main panel panel-primary">
                            <div class="panel-heading">
                                <h2 class="panel-title">挂单系统</h2>
                            </div>

                            <div class="panel-body center-block" style="margin: 10px;">
                                <form id="login_form" class="form-horizontal" runat="server">
                                    <div class="form-group">
                                        <%--<span class="lable label-default" style="font-size: large; padding-top: 14px;">账　号：</span>--%>
                                        <input type="text" class="form-control" runat="server" id="txtUserName" placeholder="用户名" />
                                    </div>

                                    <div class="form-group help" style="margin-top: 15px;">
                                        <%--<span class="lable label-default " style="font-size: large; padding-top: 14px;">密　码：</span>--%>
                                        <input type="password" class="form-control " runat="server" id="txtPwd" placeholder="密码" />
                                        <i class="fa fa-lock"></i>
                                        <a href="#" class="fa fa-question-circle"></a>
                                    </div>

                                    <div class="form-group hidden">
                                        <label>
                                            <input type="checkbox" value="remember-me">
                                            记住我
                                        </label>
                                    </div>
                                    <div class="form-group">
                            
                                            <asp:Button ID="btnLogin" runat="server" CssClass=" btn btn-primary" OnClientClick="return check()" OnClick="btnLogin_Click" Text="登录" />
                                            <input type="reset" name="reset" class="btn  btn-default" id="reset" value="重置" />
                                       
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
<%--        </div>
    </div>
    <div id="foot"></div>--%>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="Scripts/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="JavaScript/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="JavaScript/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
