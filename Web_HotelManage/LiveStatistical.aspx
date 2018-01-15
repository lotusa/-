﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LiveStatistical.aspx.cs" Inherits="LiveStatistical" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
     <link href="css/Manage.css" rel="stylesheet" type="text/css" />

    <script src="JavaScript/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="Body_Title">营业消费查询</div>
    <div>
    <div style="line-height:30px; text-align:center; height:90px;">
   入住编号：<input id="txtL_No" runat="server" type="text" />房间号：<input id="txtR_No" runat="server" type="text" /><br />
    入住日期：<input id="txtBeginTime" runat="server" type="text" style="width:80px;"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/> 至 <input id="txtEndTime" runat="server" type="text" style="width:80px;"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>退房日期：<input id="txtBeginOutTime" runat="server" type="text" style="width:80px;"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/> 至 <input id="txtEndOutTime" runat="server" type="text" style="width:80px;"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
  <br />客户姓名：<input id="txtName" runat="server" type="text" />客户手机：<input id="txtTel" runat="server" type="text" />身份证：<input id="txtIdCard" runat="server" type="text" />
       <asp:Button ID="btnSearch" runat="server" Text="查询" onclick="btnSearch_Click" />
    </div>
   
        <asp:Repeater ID="RpNews" runat="server">
        <HeaderTemplate>
            <table  class="Admin_Table" >
                <thead>
                    <tr class="Admin_Table_Title">
                      
                        <th >入住编号</th>
                        <th >房间号</th>
                        <th >客户姓名</th>
                        <th >客户手机</th>
                        <th >身份证</th>
                       <th >入住日期</th>
                       <th >退房日期</th>
                       <th >总消费金额</th>
                       <th >状态</th>
                       <th >操作人</th>
                       
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                
                 
                 <td align="center"><%#Eval("L_No")%></td>
                 <td align="center"><%#Eval("R_No")%></td>
                 <td align="center"><%#Eval("L_Name")%></td>
                  <td align="center"><%#Eval("L_Tel")%></td>
                 <td align="center"><%#Eval("L_IdCard")%></td>
                
                 <td align="center">
                 <%#Convert.ToDateTime(Eval("L_Time")).ToString("yyyy-MM-dd")%>
                 </td>
                
                <td align="center"><%#Convert.ToDateTime(Eval("L_OutTime")).ToString("yyyy-MM-dd")!="1900-01-01"?Convert.ToDateTime(Eval("L_OutTime")).ToString("yyyy-MM-dd"):""%></td>
                 <td align="center"><%#Eval("L_Total")%></td>
                  <td align="center"><%#Eval("L_State")%></td>
                   <td align="center"><%#BLL.UsersBLL.GetIdByUsers(Convert.ToInt32( Eval("U_Id"))).U_Name%></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table></FooterTemplate>
    </asp:Repeater>
    <div class="Body_Search">
        <div class="page_Left">
           <span style="font-weight:bold;">合计：</span><asp:Label ID="lblSum" runat="server" ForeColor="Red" Font-Bold="true" ></asp:Label> 
        </div>
        <div class="page_Right">
            <asp:Label runat="server" ID="PageMes"></asp:Label>
            <asp:LinkButton ID="LBHome" runat="server" CssClass="pageBtn" 
                onclick="LBHome_Click">首页</asp:LinkButton>
            <asp:LinkButton ID="LBUp" runat="server" CssClass="pageBtn" 
                onclick="LBUp_Click">上一页</asp:LinkButton>
            <asp:LinkButton ID="LBNext" runat="server" CssClass="pageBtn" 
                onclick="LBNext_Click">下一页</asp:LinkButton>
            <asp:LinkButton ID="LBEnd" runat="server" CssClass="pageBtn" 
                onclick="LBEnd_Click">尾页</asp:LinkButton>
        </div>
    </div>
    </div>
    <asp:HiddenField ID="HSelectID" runat="server" Value=""/>
    <asp:HiddenField ID="HNowPage" runat="server" Value="1"/><!--当前页-->
    <asp:HiddenField ID="HPageSize" runat="server" Value=""/><!--共多少条-->
    <asp:HiddenField ID="HAllPage" runat="server" Value="0"/><!--总共多少页-->
    <asp:HiddenField ID="HCount" runat="server" Value="15"/><!--每页多少条-->
    </form>
</body>
</html>
