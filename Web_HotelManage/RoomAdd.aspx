<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoomAdd.aspx.cs" Inherits="RoomAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/Manage.css" rel="stylesheet" type="text/css" />



    <script language="javascript" type="text/javascript">


        function check() {

            if (document.getElementById("txtNo").value == "") {
                alert("带红色 * 号项不能为空！");
                document.getElementById("txtNo").focus();
                return false;
            }
            checkBeds();
        }
        function checkBeds(){
            
            var num1 = document.getElementById("txtBeds").value;
            var num2 = document.getElementById("txtEmptyBeds").value;
                if(parseInt(num2)>parseInt(num1))
                { 
                    alert('空床数不应大于床位数！'); 
                    return false;
                }
            
            return true; 
        } 
            
        function setEmptyBeds(obj) {
            var num = obj.value;
            document.getElementById("txtEmptyBeds").value = num;
            //$("#txtEmptyBeds").val(num);
        }


    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="div_All">
            <div class="Body_Title">
                <%=strNav%>
            </div>
        </div>
        <table style="width: 100%">

            <tr>
                <th>客房类型：
            </th>
                <td style="text-align: left;">
                    <asp:DropDownList ID="ddlRt_Id" runat="server">
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <th>房间号：
            </th>
                <td style="text-align: left;">
                    <input id="txtNo" type="text" runat="server" /><span
                        style="color: Red;">*</span>
                </td>

            </tr>
            <tr style="display: none;">
                <th>房间电话：
                </th>
                <td style="text-align: left;">
                    <input id="txtTel" type="text" runat="server" />
                </td>

            </tr>
            <tr>
                <th>床位数：
                </th>
                <td style="text-align: left;">
                    <input id="txtBeds" type="text" runat="server" onblur="setEmptyBeds(this)" value="1" />
                    <span
                        style="color: Red;">*</span>
        <asp:RegularExpressionValidator ID="revBeds" runat="server" ControlToValidate="txtBeds" ErrorMessage="请输入数字" ValidationExpression="\d+" ValidationGroup="RooAddVG" Display="Dynamic"></asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入床位数" ValidationGroup="RoomAddVG" ControlToValidate="txtBeds"></asp:RequiredFieldValidator>
                </td>

            </tr>
                        <tr>
                <th>空床数：
                </th>
                <td style="text-align: left;">
                    <input id="txtEmptyBeds" type="text" runat="server" value="1" />
                    <span
                        style="color: Red;">*</span>
                </td>

            </tr>
            <tr>
                <th>状态：
            </th>
                <td style="text-align: left;">
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem>空</asp:ListItem>
                        <asp:ListItem>入住</asp:ListItem>
                        <asp:ListItem>关房</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td></td>
                <td style="text-align: left;">
                    <asp:Button ID="btnUpdate" runat="server" Text="添加" OnClientClick="return check()"
                        OnClick="btnUpdate_Click" />&nbsp;<input id="BtnBackProList" type="button" value="返回"
                            onclick='javascript: history.go(-1)' />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
