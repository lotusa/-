<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoomSearch.aspx.cs" Inherits="RoomManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/Manage.css" rel="stylesheet" type="text/css" />
           <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
    <script src="JavaScript/Jquery.js" type="text/javascript"></script>
    <script src="JavaScript/Add.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="Body_Title">房态查询</div>
        <div>

            <div class="QueryConds">
                <span>
                    <label>客房类型：</label><asp:DropDownList ID="ddlRt_Id" runat="server"></asp:DropDownList></span>
                <span>
                    <label>状态：</label><asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem>全部</asp:ListItem>
                        <asp:ListItem>空</asp:ListItem>
                        <asp:ListItem>入住</asp:ListItem>
                        <asp:ListItem>独占</asp:ListItem>
                        <asp:ListItem>关房</asp:ListItem>
                    </asp:DropDownList></span>
                <span>
                    <label>房间号：</label><input id="txtNo" runat="server" type="text" /></span>
                <span>
                    <label>房间电话：</label><input id="txtTel" runat="server" type="text" /></span>
                <span>
                    <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="查询" OnClick="btnSearch_Click" /></span>
            </div>
            <asp:Repeater ID="RpNews" runat="server">
                <HeaderTemplate>
                    <table class=" table table-bordered">
                        <thead>
                            <tr class="Admin_Table_Title">

                                <th width="20%">客房类型</th>
                                <th width="20%">房间号</th>
                                <%--      <th >房间电话</th>--%>
                                <th width="20%">床位数</th>
                                <th width="20%">空床数</th>
                                <th width="20%">状态</th>


                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>

                        <td align="center"><%#BLL.RoomTypeBLL.GetRoomTypeById(Convert.ToInt32( Eval("Rt_Id"))).Rt_Name%></td>
                        <td align="center"><%#Eval("R_No")%></td>
                        <%--                 <td align="center"><%#Eval("R_Tel")%></td>--%>
                        <td align="center"><%#Eval("R_Beds")%></td>
                        <td align="center"><%#Eval("R_EmptyBeds")%></td>
                        <td align="center"><%#Eval("R_State")%></td>

                    </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
            <div class="Body_Search">
                <div class="page_Left">
                </div>
                <div class="page_Right">
                    <asp:Label runat="server" ID="PageMes"></asp:Label>
                    <asp:LinkButton ID="LBHome" runat="server" CssClass="pageBtn"
                        OnClick="LBHome_Click">首页</asp:LinkButton>
                    <asp:LinkButton ID="LBUp" runat="server" CssClass="pageBtn"
                        OnClick="LBUp_Click">上一页</asp:LinkButton>
                    <asp:LinkButton ID="LBNext" runat="server" CssClass="pageBtn"
                        OnClick="LBNext_Click">下一页</asp:LinkButton>
                    <asp:LinkButton ID="LBEnd" runat="server" CssClass="pageBtn"
                        OnClick="LBEnd_Click">尾页</asp:LinkButton>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="HSelectID" runat="server" Value="" />
        <asp:HiddenField ID="HNowPage" runat="server" Value="1" />
        <!--当前页-->
        <asp:HiddenField ID="HPageSize" runat="server" Value="" />
        <!--共多少条-->
        <asp:HiddenField ID="HAllPage" runat="server" Value="0" />
        <!--总共多少页-->
        <asp:HiddenField ID="HCount" runat="server" Value="15" />
        <!--每页多少条-->
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
