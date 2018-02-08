<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomManage2.aspx.cs" Inherits="RoomManage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="Server">

    <div class="Body_Title">客房管理</div>
    <div>

        <div style="line-height: 30px; padding-left: 10px; text-align: left; height: 30px;">
            <input id="Button1" type="button" value="新增" onclick='window.location = "RoomAdd.aspx"' />
        </div>
        <asp:Repeater ID="RpNews" runat="server">
            <HeaderTemplate>
                <table class=" table table-bordered">
                    <thead>
                        <tr class="Admin_Table_Title">
                            <th>选择</th>
                            <th>客房类型</th>
                            <th>房间号</th>
                            <th style="display: none;">房间电话</th>
                            <th>床位数</th>
                            <th>空床数</th>
                            <th>状态</th>

                            <th>详细操作</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td align="center">
                        <input type="checkbox" value='<%#Eval("R_Id") %>' name="CheckMes" /></td>
                    <td align="center"><%#BLL.RoomTypeBLL.GetRoomTypeById(Convert.ToInt32( Eval("Rt_Id"))).Rt_Name%></td>
                    <td align="center"><%#Eval("R_No")%></td>
                    <td align="center" style="display: none;"><%#Eval("R_Tel")%></td>
                    <td align="center"><%#Eval("R_Beds")%></td>
                    <td align="center"><%#Eval("R_EmptyBeds")%></td>
                    <td align="center"><%#Eval("R_State")%></td>
                    <td align="center">
                        <a href="RoomAdd.aspx?id=<%#Eval("R_Id") %>">修改</a>
                        <asp:LinkButton ID="ibDel" runat="server" Text="删除"
                            CommandArgument='<%# Eval("R_Id") %>'
                            OnClientClick="return confirm('确定删除当前项?')" OnClick="ibDel_ItemDeleting" />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate></table></FooterTemplate>
        </asp:Repeater>
        <div class="Body_Search">
            <div class="page_Left">
                <input id="BtnAllSelect" type="button" value="全选" />&nbsp;<asp:Button ID="BtnAllDel" runat="server" Text="删除选中" OnClick="BtnAllDel_Click" />
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphFooter" runat="Server">
</asp:Content>

