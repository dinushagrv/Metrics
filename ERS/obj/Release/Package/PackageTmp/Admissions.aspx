<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" Inherits="ERS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 137px;
        }
        .style2
        {
            width: 137px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Club attendance </h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Month</td>
                <td>
                    <asp:DropDownList ID="ddMonth" runat="server">
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
            </tr>
            <tr>
                <td class="style1">
                    Year</td>
                <td>
                    <asp:DropDownList ID="ddYear" runat="server">
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem Selected="True">2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Sandown</td>
                <td>
                    <asp:TextBox ID="txtSundown" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Meadows</td>
                <td>
                    <asp:TextBox ID="txtMeadows" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Ballarat</td>
                <td>
                    <asp:TextBox ID="txtBallarat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Bendigo</td>
                <td>
                    <asp:TextBox ID="txtBendigo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Cranbourne</td>
                <td class="style3">
                    <asp:TextBox ID="txtCranbourne" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Geelong</td>
                <td>
                    <asp:TextBox ID="txtGeelong" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Healesville</td>
                <td>
                    <asp:TextBox ID="txtHealsville" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Horsham</td>
                <td>
                    <asp:TextBox ID="txtHorsham" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Sale</td>
                <td class="style3">
                    <asp:TextBox ID="txtSale" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Shepparton</td>
                <td>
                    <asp:TextBox ID="txtShepparton" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Traralgon</td>
                <td>
                    <asp:TextBox ID="txtTraralgon" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Warragul</td>
                <td>
                    <asp:TextBox ID="txtWarragul" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Warrnambool</td>
                <td>
                    <asp:TextBox ID="txtWarranambool" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Clear" />
                    <asp:Button ID="Save" runat="server" onclick="Save_Click" Text="Save" 
                        Width="68px" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:SqlDataSource ID="admitions" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MetricsConnectionString %>" 
            SelectCommand="SELECT * FROM [admissions]"
            DeleteCommand="DELETE FROM [admissions] WHERE id=@id"

            ></asp:SqlDataSource>
    </p>
    <h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" AutoGenerateDeleteButton="True" CellPadding="4" 
            DataKeyNames="id" DataSourceID="admitions" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="font-size: small">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="sundown" HeaderText="sundown" 
                    SortExpression="sundown" />
                <asp:BoundField DataField="meadows" HeaderText="meadows" 
                    SortExpression="meadows" />
                <asp:BoundField DataField="ballarat" HeaderText="ballarat" 
                    SortExpression="ballarat" />
                <asp:BoundField DataField="bendigo" HeaderText="bendigo" 
                    SortExpression="bendigo" />
                <asp:BoundField DataField="cranburne" HeaderText="cranburne" 
                    SortExpression="cranburne" />
                <asp:BoundField DataField="geelong" HeaderText="geelong" 
                    SortExpression="geelong" />
                <asp:BoundField DataField="healesville" HeaderText="healesville" 
                    SortExpression="healesville" />
                <asp:BoundField DataField="horsham" HeaderText="horsham" 
                    SortExpression="horsham" />
                <asp:BoundField DataField="sale" HeaderText="sale" SortExpression="sale" />
                <asp:BoundField DataField="shepparton" HeaderText="shepparton" 
                    SortExpression="shepparton" />
                <asp:BoundField DataField="traralgon" HeaderText="traralgon" 
                    SortExpression="traralgon" />
                <asp:BoundField DataField="warragul" HeaderText="warragul" 
                    SortExpression="warragul" />
                <asp:BoundField DataField="warrnambool" HeaderText="warrnambool" 
                    SortExpression="warrnambool" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
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
    </h2>
    <p>
        &nbsp;</p>
</asp:Content>
