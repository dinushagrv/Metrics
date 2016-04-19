<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fasttrack.aspx.cs" Inherits="ERS.fasttrack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style3
        {
            height: 21px;
        }
        .style2
        {
            height: 22px;
        }
        .style4
        {
            height: 29px;
        }
        .style5
        {
            font-size: large;
            color: #CC0000;
        }
        .style6
        {
            width: 165px;
            height: 41px;
            margin-left: 0px;
        }
        .style7
        {
            width: 174px;
        }
        .style8
        {
            height: 21px;
            width: 174px;
        }
        .style9
        {
            height: 22px;
            width: 174px;
        }
        .style10
        {
            height: 29px;
            width: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style5">
                <strong>Fasttrack </strong>
            </td>
            <td>
                <strong></strong>
            </td>
            <td bgcolor="Black" class="style7">
                <strong style="padding: 5px"></strong>
                <img alt="" class="style6" src="images/rightnav-logo-fasttrack-noreflect.png" /></td>
            <td>
                <strong></strong>
            </td>
        </tr>
        <tr>
            <td>
                Year</td>
            <td>
                <asp:DropDownList ID="dd_year" runat="server">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem Selected="True">2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Month</td>
            <td class="style3">
                <asp:DropDownList ID="dd_month" runat="server">
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style8">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Open Tickets
            </td>
            <td>
                <asp:TextBox ID="ft_ot" runat="server"></asp:TextBox>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tickets Created
            </td>
            <td class="style2">
                <asp:TextBox ID="txt_ft_tix_created" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style4">
                Avg Reponsce Time</td>
            <td class="style4">
                <asp:TextBox ID="ft_art_days" runat="server"></asp:TextBox>
                Days
                <asp:TextBox ID="ft_art_hours" runat="server"></asp:TextBox>
&nbsp;Hours</td>
            <td class="style10">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_clear" runat="server" Text="Clear" />
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" 
                    onclick="btn_Submit_Click" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Height="148px" Width="937px" 
        AutoGenerateDeleteButton="True" DataKeyNames="id" 
        style="text-align: center" onrowdatabound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                Visible="False" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
            <asp:BoundField DataField="ft_open_tix" HeaderText="Open Tickets" 
                SortExpression="ft_open_tix" />
            <asp:BoundField DataField="ft_tix_created" HeaderText="Tickets Created" 
                SortExpression="ft_tix_created" />
            <asp:BoundField DataField="ft_res_t_days" HeaderText="Avg. Res. Time Dy" 
                SortExpression="ft_res_t_days" />
            <asp:BoundField DataField="ft_res_t_hours" HeaderText="Avg. Res Time Hr" 
                SortExpression="ft_res_t_hours" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MetricsConnectionString %>" 
        SelectCommand="SELECT [id], [year], [month], [ft_open_tix], [ft_tix_created], [ft_res_t_days], [ft_res_t_hours] FROM [IT_fasttrack]"
        DeleteCommand="Delete from [IT_fasttrack] where id=@id"
    >
    </asp:SqlDataSource>
</asp:Content>
