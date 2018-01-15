<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeftAdmin.aspx.cs" Inherits="LeftAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>主页左边</title>
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
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
      <style type="text/css">
        body {
            font: 12px Arial, Helvetica, sans-serif;
            color: #000;
            background-color: #EEF2FB;
            margin: 0px;
        }

        #container {
            width: 130px;
        }

        H1 {
            font-size: 12px;
            margin: 0px;
            width: 130px;
            height: 30px;
            line-height: 30px;
            color: #000000;
            background-image: url(image/menu_bgs.gif);
            text-align: center;
        }

        .content {
            width: 130px;
        }

        .MM ul {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            display: block;
        }

        .MM li {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            list-style-type: none;
            display: block;
            text-decoration: none;
            height: 26px;
            width: 130px;
            padding-left: 0px;
        }

        .MM {
            width: 130px;
            margin: 0px;
            padding: 0px;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
            clip: rect(0px,0px,0px,0px);
        }

            .MM a:link {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                height: 26px;
                width: 130px;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                overflow: hidden;
                text-decoration: none;
            }

            .MM a:visited {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                height: 26px;
                width: 130px;
                text-decoration: none;
            }

            .MM a:active {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                height: 26px;
                width: 130px;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                overflow: hidden;
                text-decoration: none;
            }

            .MM a:hover {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                font-weight: bold;
                color: #000000;
                background-repeat: no-repeat;
                text-align: center;
                display: block;
                margin: 0px;
                padding: 0px;
                height: 26px;
                width: 130px;
                text-decoration: none;
            }
    </style>
</head>
<body>
        <div class="container" role="main">
            <div class="row">
                <div class=" col-md-12 btn-group">
                    <a class="btn btn-primary" href="RoomTypeManage.aspx" target="main">客房类型管理</a>
                    <a class="btn btn-primary" href="RoomManage.aspx" target="main">客房管理</a>
                    <a class="btn btn-primary" href="UsersManage.aspx" target="main">用户管理</a>
                    <a class="btn btn-primary" href="LiveStatistical.aspx" target="main">挂单记录查询</a>
                    <a class="btn btn-primary" href="UpdatePwd.aspx" target="main">修改密码</a>
                </div>

            </div>
        </div>

    <form id="form1" runat="server" style="display:none;">
    <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
        <tr>
            <td width="182" valign="top">
                <div id="container">
                    <h1>客房信息维护</h1>
                    <div class="content">
                        <ul class="MM">
                            
<li><a href="RoomTypeManage.aspx" target="main">客房类型管理</a></li>
<li><a href="RoomManage.aspx" target="main">客房管理</a></li>
                                
                        </ul>
                    </div>
                        <h1>客户预订</h1>
                    <div class="content">
                        <ul class="MM">
                            
<li><a href="OrdersSearch.aspx" target="main">预订查询</a></li>
                                
                        </ul>
                    </div>
                     <h1>客户入住</h1>
                    <div class="content">
                        <ul class="MM">
                            
<li><a href="LiveSearch.aspx" target="main">入住查询</a></li>
<li><a href="ConsumptionSearch.aspx" target="main">项目消费查询</a></li>
                                
                        </ul>
                    </div>
                     <h1>营业统计</h1>
                    <div class="content">
                        <ul class="MM">
                            
<li><a href="LiveStatistical.aspx" target="main">营业消费查询</a></li>
                                
                        </ul>
                    </div>
                     <h1>系统管理</h1>
                    <div class="content">
                        <ul class="MM">
                            
<li><a href="UsersManage.aspx" target="main">用户管理</a></li>
<li><a href="UpdatePwd.aspx" target="main">修改密码</a></li>
                                
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    </form>

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
