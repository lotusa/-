<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LiveAdd.aspx.cs" Inherits="LiveAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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

<%--    <link href="css/Manage.css" rel="stylesheet" type="text/css" />--%>

    
    <script src="JavaScript/My97DatePicker/WdatePicker.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        function clearNoNum(obj) {
            //先把非数字的都替换掉，除了数字和.
            obj.value = obj.value.replace(/[^\d.]/g, "");
            //必须保证第一个为数字而不是.
            obj.value = obj.value.replace(/^\./g, "");
            //保证只有出现一个.而没有多个.
            obj.value = obj.value.replace(/\.{2,}/g, ".");
            //保证.只出现一次，而不能出现两次以上
            obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
        }

        function check() {

         
            if (document.getElementById("txtName").value == "") {
                alert("带红色 * 号项不能为空！");
                document.getElementById("txtName").focus();
                return false;
            }
            if (document.getElementById("txtTel").value == "") {
                alert("带红色 * 号项不能为空！");
                document.getElementById("txtTel").focus();
                return false;
            }
            if (document.getElementById("txtIdCard").value == "") {
                alert("带红色 * 号项不能为空！");
                document.getElementById("txtIdCard").focus();
                return false;
            }

            if (document.getElementById("txtTime").value == "") {
                alert("带红色 * 号项不能为空！");
                document.getElementById("txtTime").focus();
                return false;
            }


            if (document.getElementById("txtTime").value < document.getElementById("txtGetDate").value) {
                alert("入住日期必须大于或等于当前日期！");
                document.getElementById("txtTime").focus();
                return false;
            }
            //if (document.getElementById("txtDeposit").value == "") {
            //    alert("带红色 * 号项不能为空！");
            //    document.getElementById("txtDeposit").focus();
            //    return false;
            //}
            
            
        }
        
    </script>


    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }

        label[for^="RadioButtonListGender"]
        {
            margin-bottom:0px;
            margin:0px;
        }
    </style>

</head>
<body>


    <form id="form1" runat="server">
    <div class="div_All">
        <div class="Body_Title">
            <%=strNav%></div>
    </div>
    <table class=" table table-bordered">
        <tr>
            <th>
            入住编号：
            </th>
            <td style="text-align: left; ">
                <input id="txtNo" type="text"  runat="server" disabled="disabled" />
            </td>
           
        </tr>
        <tr>
            <th >
            客房：
            </th>
            <td style="text-align: left; ">
                <asp:DropDownList ID="ddlRt_Id" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlRt_Id_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlR_Id" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlR_Id_SelectedIndexChanged" >
                </asp:DropDownList>
                <label title="总床数："></label>
                <label title="空床数："></label>
                床位数：<asp:TextBox ID="ddlR_Beds" runat="server" Width="30px" ReadOnly="True"></asp:TextBox>
                空床数：<asp:TextBox ID="ddlR_EmptyBeds" runat="server" style="margin-left: 0px" Width="30px" ReadOnly="True"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <th class="auto-style1" >
            姓名：
            </th>
        <td style="text-align: left;" class="auto-style1">
            <input id="txtName" type="text" runat="server" /><span
                style="color: Red;">*</span>
            <button type="button" id="btnSelectGuest" class="btn btn-primary" style="text-shadow: black 5px 3px 3px;" >
                <span class=" glyphicon  glyphicon-user">选择</span>
            </button>
        </td>
           
        </tr>
        <tr>
            <th >
            手机：
            </th>
            <td style="text-align: left; ">
                <input id="txtTel" type="text"  runat="server"   /><span
                    style="color: Red;">*</span>
                <asp:RegularExpressionValidator ID="rgvPhone" runat="server" ControlToValidate="txtTel" Display="Dynamic" ErrorMessage="手机号码错误" ValidationExpression="((\(\d{3}\)|\d{3}-)?\d{8}|\d{13})" ValidationGroup="ValidationGroupAddLive"></asp:RegularExpressionValidator>
            </td>
           
        </tr>
        <tr>
            <th >
            身份证：
            </th>
            <td style="text-align: left; ">
                <input id="txtIdCard" type="text"  runat="server"   /><span
                    style="color: Red;">*</span>
                <asp:RegularExpressionValidator ID="rgvID" runat="server" ErrorMessage="身份证号码错误" ValidationExpression="\d{17}[\d|X]|\d{15}" ControlToValidate="txtIdCard" Display="Dynamic" ValidationGroup="ValidationGroupAddLive"></asp:RegularExpressionValidator>
            </td>
           
        </tr>
        <tr>
            <th>性别：
            </th>
            <td style="text-align: left;">

                <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>

                <span
                    style="color: Red;">*</span>
            </td>

        </tr>
        <tr>
            <th >
            年龄：
            </th>
            <td style="text-align: left; ">
                <input id="txtAge" type="text"  runat="server"   /><span
                    style="color: Red;">*</span>
            </td>
           
        </tr>
        <tr>
            <th >
            入住日期：
            </th>
            <td style="text-align: left; ">
                <input id="txtTime" type="text" runat="server" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" /><input id="txtGetDate" type="text" runat="server"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" style="display:none;" /><span
                    style="color: Red;">*</span>
            </td>
           
        </tr>
        <%--        <tr>
            <th >
            入住定金：
            </th>
            <td style="text-align: left; ">
                <input id="txtDeposit" type="text"  runat="server"  onkeyup="clearNoNum(this)" /><span
                    style="color: Red;">*</span>
            </td>
           
        </tr>--%>
        <tr>
            <th >
            操作人：
            </th>
            <td style="text-align: left; ">
 <input id="txtUserName" type="text"  runat="server" disabled="disabled" />
            </td>
           
        </tr>
        <tr>
            <td>
            </td>
            <td style="text-align: left; ">
                <asp:Button ID="btnUpdate" runat="server" Text="添加" OnClientClick="return check()"
                    OnClick="btnUpdate_Click" />&nbsp;<input id="BtnBackProList" type="button" value="返回"
                        onclick='javascript:history.go(-1)' />
            </td>
        </tr>
    </table>

        <!--弹出对话框-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myModalLabel">选择</h4>
                    </div>
                    <div class="modal-body">
                        <div class=" form-group">
                            筛选：<input id="filterName" name="filterName" />
                            
                        </div>
                        <asp:Repeater ID="userRepeater" runat="server">
                                            <HeaderTemplate>
                    <table id="tableGuest" class=" table table-bordered">
                        <thead>
                            <tr >

                                <th>姓名</th>
                                <th>手机</th>
                                <th>身份证</th>
                                <th>性别</th>
                                <th>年龄</th>
                                <th>操作</th>



                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr onclick="setGuest(this)" >

                        <td align="center"><%#Eval("L_Name")%></td>
                        <td align="center"><%#Eval("L_Tel")%></td>
                        <td align="center"><%#Eval("L_IdCard")%></td>
                        <td align="center"><%#Eval("L_Gender")%></td>

                        <td align="center"><%#Eval("L_Age")%></td>
                        <td align="center"><button class="btn btn-primary" value="<%#Eval("L_Id") %>" onclick="">选择</button></td>
                     </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
                        </asp:Repeater>
                        
                    <div class="modal-footer">
                         <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                         <%#Eval("L_Name")%>  <%#Eval("L_Tel")%>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
          
    <script  src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="JavaScript/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="JavaScript/ie10-viewport-bug-workaround.js"></script>

    <script src="Scripts/jquery.columnfilters.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        $("#btnSelectGuest").click(function () {
            $("#myModalLabel").text("请选择");
            $('#myModal').modal();
        });

        function setGuestInfo(obj) {
            
            var val = obj.value;
            
           // alert(val);
        }
        function setGuest(row) {

            var name = $(row).children().eq(0).text();
            var tel = $(row).children().eq(1).text();
            var idCard = $(row).children().eq(2).text();
            var gender = $(row).children().eq(3).text();
            var age = $(row).children().eq(4).text();

            $("#txtName").val(name);
            $("#txtTel").val(tel);
            $("#txtIdCard").val(idCard);
            gender == "男" ? $("#RadioButtonListGender_0")[0].checked = "checked" : $("#RadioButtonListGender_1")[0].checked = "checked";
            $("#txtAge").val(age);

            $('#myModal').modal('hide');
            //var val = obj.innerHTML;
            //alert(val);
        }

        //$(document).ready(function () {
        //    $('table#tableGuest').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'], excludeColumns: [3,4] });
        //});

  $(function(){ 
      $("#filterName").keyup(function () {
          if ($(this).val() == "")
          {
              $("table#tableGuest tbody tr")
                    .show();
              return;
          }

          $("table#tableGuest tbody tr") 
                    .hide() 
                    .filter(":contains('"+( $(this).val() )+"')") 
                    .show(); 
       }).keyup(); 
  }) 

  $(function () {
      function GetBirthdatByIdNo(iIdNo) {
          var ymd = "";
          var sexStr = "";
          iIdNo = $.trim(iIdNo);

          if (iIdNo.length == 15) {
              ymd = iIdNo.substring(6, 12);
              ymd = "19" + tmpStr;
              //tmpStr = tmpStr.substring(0, 4) + "-" + tmpStr.substring(4, 6) + "-" + tmpStr.substring(6);
              sexStr = parseInt(iIdNo.substr(14, 1), 10) % 2 ? "男" : "女";
              //birthday.text(sexStr + tmpStr);
          }
          else if (iIdNo.length == 18) {
              //tmpStr = iIdNo.substring(6, 14);
              //tmpStr = tmpStr.substring(0, 4) + "-" + tmpStr.substring(4, 6) + "-" + tmpStr.substring(6);
              sexStr = parseInt(iIdNo.substr(16, 1), 10) % 2 ? "男" : "女";
              ymd = iIdNo.substring(6, 14);
              //birthday.text(sexStr + tmpStr);
          }
          else {
              return;
          }


          var myDate = new Date();
          var month = myDate.getMonth() + 1;
          var day = myDate.getDate();

          var age = myDate.getFullYear() - ymd.substring(0, 4) - 1;
          if (ymd.substring(4, 6) < month || ymd.substring(4, 6) == month && ymd.substring(6, 8) <= day) {
              age++;
          }

          sexStr == "男" ? $("#RadioButtonListGender_0")[0].checked = "checked" : $("#RadioButtonListGender_1")[0].checked = "checked";
          $("#txtAge").val(age);
      }
      $("#txtIdCard").blur(function () {
          GetBirthdatByIdNo($(this).val());
      });
      
  });
    </script>
    </form>

        </body>
</html>