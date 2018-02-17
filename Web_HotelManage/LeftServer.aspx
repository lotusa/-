<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeftServer.aspx.cs" Inherits="LeftServer" %>

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

        
                <a class="btn btn-primary" href="LiveAdd.aspx" target="main">入住登记</a>
                <a class="btn btn-primary" href="RoomSearch.aspx" target="main">房态查询</a>
                <a class="btn btn-primary" href="LiveSearch.aspx" target="main">入住查询</a>
                <a class="btn btn-default" href="LiveSettlement.aspx" target="main">离开退房</a>
    </div>

    </div>
    </div>


    <form id="form1" runat="server" style="display:none">
        <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
            <tr>
                <td width="130px" valign="top">
                    <div id="container">
                        <h1 style="display: none;">客房预订</h1>
                        <div class="content" style="display: none;">
                            <ul class="MM">

                                <li><a href="OrdersAdd.aspx" target="main">预订录入</a></li>
                                <li><a href="OrdersManage.aspx" target="main">预订取消</a></li>
                                <li><a href="OrdersJoin.aspx" target="main">按预订单入住</a></li>
                            </ul>
                        </div>
                        <h1 style="display: none;">前台查询</h1>
                        <div class="content">
                            <ul class="MM">

                                <li style="display: none;"><a href="RoomTypeSearch.aspx" target="main">房价一览</a></li>
                                <li><a href="RoomSearch.aspx" target="main">房态查询</a></li>
                            </ul>
                        </div>
                        <h1 style="display: none;">前台接待</h1>
                        <div class="content">
                            <ul class="MM">

                                <li><a href="LiveAdd.aspx" target="main">入住登记</a></li>
                                <li><a href="LiveSearch.aspx" target="main">入住查询</a></li>
                            </ul>
                        </div>
                        <h1 style="display: none;">前台收银</h1>
                        <div class="content">
                            <ul class="MM">

                                <li style="display: none;"><a href="LiveManage.aspx" target="main">消费登记</a></li>
                                <li style="display: none;"><a href="LiveSettlement.aspx" target="main">结算退房</a></li>
                                <li><a href="LiveSettlement.aspx" target="main">退房</a></li>
                            </ul>
                        </div>
                        <h1 style="display: none;">个人信息</h1>
                        <div class="content" style="display: none;">
                            <ul class="MM">

                                <li><a href="UsersUpdate.aspx" target="main">修改资料</a></li>
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
    <script src="JavaScript/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="Scripts/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="JavaScript/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="JavaScript/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
