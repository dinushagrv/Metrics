<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IT.aspx.cs" Inherits="ERS.IT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        height: 25px;
    }
    .style3
    {
        width: 194px;
    }
    .style4
    {
        height: 25px;
        width: 194px;
    }
    .style5
    {
        height: 26px;
        font-weight: 700;
    }
    .style6
    {
        width: 194px;
        height: 26px;
    }
    .style7
    {
        height: 26px;
    }
        .style8
        {
            height: 30px;
        }
        .style9
        {
            width: 194px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td style="font-weight: 700" class="style7">
                    <strong>Year</strong></td>
                <td class="style6">
                    <strong>
                <asp:DropDownList ID="dd_year" runat="server">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem Selected="True">2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                </asp:DropDownList>
                    </strong></td>
                <td class="style7">
                    <strong>Month</strong></td>
                <td class="style7">
                    <strong>
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
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <strong></strong></td>
                <td class="style3">
                    <strong></strong>
                </td>
                <td>
                    <strong></strong></td>
                <td>
                    <strong></strong>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <strong>HelpDesk</strong></td>
                <td class="style3">
                    <strong></strong></td>
                <td>
                    <strong>FastTrack</strong></td>
                <td>
                    <strong></strong></td>
            </tr>
            <tr>
                <td class="style7">
                    Open Tickets 
                </td>
                <td class="style6">
                    <asp:TextBox ID="txt_hd_ot" runat="server" TabIndex="1"></asp:TextBox>
                </td>
                <td class="style7">
                    Open Tickets 
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_ft_ot" runat="server" TabIndex="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Tickets Created</td>
                <td class="style3">
                    <asp:TextBox ID="txt_hd_tix_created" runat="server" TabIndex="2"></asp:TextBox>
                </td>
                <td>
                    Tickets Created</td>
                <td>
                    <asp:TextBox ID="txt_ft_tix_cre" runat="server" TabIndex="6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Avg.
                    First Responce Time</td>
                <td class="style3">
                    <asp:TextBox ID="txt_hd__res_days" runat="server" Width="20px" TabIndex="3"></asp:TextBox>
&nbsp;Days
                    <asp:TextBox ID="txt_hd_res_hours" runat="server" Width="30px" TabIndex="4"></asp:TextBox>
&nbsp;Hours</td>
                <td>
                    Avg.
                    First Responce Time</td>
                <td>
                    <asp:TextBox ID="txt_fr_days" runat="server" Width="20px" TabIndex="7"></asp:TextBox>
&nbsp;Days
                    <asp:TextBox ID="txt_fr_hr" runat="server" Width="30px" TabIndex="8"></asp:TextBox>
&nbsp;Hours</td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style4">
                    </td>
                <td class="style2">
                    </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style4" style="text-align: right">
                    </td>
                <td class="style2">
                    </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    </td>
                <td class="style9" style="text-align: right">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Clear" />
                </td>
                <td class="style8">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
                </td>
                <td class="style8">
                    </td>
            </tr>
        </table>
    </p>
<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateDeleteButton="True" CellPadding="4" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" AllowPaging="True" DataKeyNames="id" 
            Height="180px" onrowdatabound="GridView1_RowDataBound" Width="920px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
                <asp:BoundField DataField="HD_open_tix" HeaderText="HD OT" 
                    SortExpression="HD_open_tix" />
                <asp:BoundField DataField="HD_created_tix" HeaderText="HD CT" 
                    SortExpression="HD_created_tix" />
                <asp:BoundField DataField="HD_first_response_t_days" HeaderText="HD ResT Days" 
                    SortExpression="HD_first_response_t_days" />
                <asp:BoundField DataField="HD_first_response_t_hours" HeaderText="HD ResT Hrs" 
                    SortExpression="HD_first_response_t_hours" />
                <asp:BoundField DataField="FT_open_tix" HeaderText="FT OT" 
                    SortExpression="FT_open_tix" />
                <asp:BoundField DataField="FT_created_tix" HeaderText="FT CT" 
                    SortExpression="FT_created_tix" />
                <asp:BoundField DataField="FT_first_response_t_days" HeaderText="FT FRT Dy" 
                    SortExpression="FT_first_response_t_days" />
                <asp:BoundField DataField="FT_first_response_t_hours" HeaderText="FT FRT hr" 
                    SortExpression="FT_first_response_t_hours" />
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
            SelectCommand="SELECT * FROM [it_dept]"
            DeleteCommand = "DELETE from [it_dept] where id=@id"
>
        </asp:SqlDataSource>
    </p>
</asp:Content>
