<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="media.aspx.cs" Inherits="ERS.media" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <strong>Incoming Media</strong>&nbsp;
</h2>
<p>
    <table style="width: 100%;">
        <tr>
            <td>
                Month
            </td>
            <td>
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
            <td>
                Year</td>
            <td>
                <asp:DropDownList ID="dd_year" runat="server">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem Selected="True">2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>GRV Website</strong></td>
            <td>
                &nbsp;</td>
            <td>
                <strong>Twitter</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Page Views</td>
            <td>
                <asp:TextBox ID="txt_grv_pv" runat="server" TabIndex="1"></asp:TextBox>
            </td>
            <td>
                Impressions</td>
            <td>
                <asp:TextBox ID="txt_tw_imp" runat="server" TabIndex="7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                New users
            </td>
            <td>
                <asp:TextBox ID="txt_grv_new_usr" runat="server" TabIndex="1"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong>Facebook Page</strong></td>
            <td>
                &nbsp;</td>
            <td>
                <strong>YouTube </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reach</td>
            <td>
                <asp:TextBox ID="txt_fb_reach" runat="server" TabIndex="2"></asp:TextBox>
            </td>
            <td>
                Views</td>
            <td>
                <asp:TextBox ID="txt_yt_views" runat="server" TabIndex="8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Video Views</td>
            <td>
                <asp:TextBox ID="txt_fb_vid_view" runat="server" TabIndex="3"></asp:TextBox>
            </td>
            <td>
                Subscribers</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_yt_sub" runat="server" TabIndex="9"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                New Likes</td>
            <td>
                <asp:TextBox ID="grv_fb_new_l" runat="server" TabIndex="4"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <strong>Greyhound Care</strong></td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td>
                Page Views</td>
            <td>
                <asp:TextBox ID="txt_gc_pv" runat="server" TabIndex="5"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                New Users</td>
            <td>
                <asp:TextBox ID="txt_gc_n_usr" runat="server" TabIndex="6"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Clear" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    onclick="btn_submit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="919px" 
        AutoGenerateDeleteButton="True" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="grv_page_v" HeaderText="PView(GRV)" 
                SortExpression="grv_page_v" />
            <asp:BoundField DataField="grv_new_users" HeaderText="NUsr (GRV)" 
                SortExpression="grv_new_users" />
            <asp:BoundField DataField="fb_reach" HeaderText="FB Reach" 
                SortExpression="fb_reach" />
            <asp:BoundField DataField="fb_vid_view" HeaderText="FB Vid View" 
                SortExpression="fb_vid_view" />
            <asp:BoundField DataField="fb_new_likes" HeaderText="FB N Likes" 
                SortExpression="fb_new_likes" />
            <asp:BoundField DataField="tw_impressions" HeaderText="TW Impressions" 
                SortExpression="tw_impressions" />
            <asp:BoundField DataField="yt_views" HeaderText="YT Views" 
                SortExpression="yt_views" />
            <asp:BoundField DataField="yt_subscriptions" HeaderText="YT Subscribers" 
                SortExpression="yt_subscriptions" />
            <asp:BoundField DataField="gc_page_v" HeaderText="GC PView" 
                SortExpression="gc_page_v" />
            <asp:BoundField DataField="gc_new_users" HeaderText="GC N Usr" 
                SortExpression="gc_new_users" />
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
        SelectCommand="SELECT * FROM [media]"
        DeleteCommand="Delete from [media] where id=@id"

        ></asp:SqlDataSource>
</p>
</asp:Content>
