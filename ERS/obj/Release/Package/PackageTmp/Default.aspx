﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ERS._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 157px;
        height: 58px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to GRV Metrics</h2>
<p class="MsoNormal">
    This site is specifically for departments to enter specific metrics on a regular 
    basis to allow those metrics to be tracked over time, and reported on in the 
    <strong>Monthly Management Information Report</strong>.
</p>
<p class="MsoNormal">
    Typically, the type of information collected here is not easily 
    reachable by our regular reporting mechanism, as they are stored or collected in 
    various places. Your department may have one or many metrics that you are 
    keeping track of in the Metrics System, but it is by no means the complete set of 
    reportable data for the department.
</p>
<p class="MsoNormal">
    You must be careful, however, <strong>not to delete old entries</strong> that are 
    correct, as they will have to be entered in again. You should also not 
    add/delete or change any metrics which you do not have responsibility for. There 
    is no security around this application except that it is only visible from 
    inside the GRV network, so be very careful.</p>
<br />
</asp:Content>
