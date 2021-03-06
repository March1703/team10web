﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Team11._Default" %>

<%-- Header Content e.g. style link --%>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="Stylesheet" type="text/css" href="Styles/Default.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</asp:Content>
<%-- Page Title Content --%>
<asp:Content ID="TitlesContent" runat="server" ContentPlaceHolderID="TitleContent">
    <h1>Timetable System</h1>
</asp:Content>
<%-- Body Content --%>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myConnectionString %>" 
        SelectCommand="SELECT [dept_name] FROM [DEPT] ORDER BY [dept_name]"></asp:SqlDataSource>
    
    <div class="canister">
        <div class="canistertitle blue">
            <h2>Login</h2>
        </div>
        <div class="canistercontainer">
            <div class="row">
                <div class="text-center col-md-12">
                    <label>Username</label>
                </div>
                <div class="col-md-12">
                    <asp:DropDownList ID="DropDownListDept" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="dept_name" 
                        DataValueField="dept_name" class="form-control text-center select">
                    </asp:DropDownList>
                </div>
                <div class="text-center col-md-12">
                    <label>Password</label>
                </div>
                <div class="col-md-12">
                    <asp:TextBox ID="TextBoxPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="clearfix"></div>
                <div class="text-center col-md-6 col-sm-6">
                <asp:Button ID="ButtonLogin" runat="server" style="width:375px; margin-top:5px;border-color:#CA006A; background-color:#CA006A; font-weight: bold; "  class="btn btn-success" onclick="ButtonLogin_Click" 
                        Text="Login" />
                </div>
            </div>
        </div>
    </div>
    <div class="center text-center container">
    <asp:Label class="center errormessage" style="color:red;" ID="incorrect" Text="" runat="server"></asp:Label>
    
    </div>
    <div class="errorcontainer text-center col-md-12">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Error: Please Enter a Valid Password" class="errormessage" 
            ControlToValidate="TextBoxPassword">
        </asp:RequiredFieldValidator>
        
    </div>
</asp:Content>