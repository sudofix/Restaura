<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h2>Register</h2>
        <hr /></div>
    <div class="center-page">

            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="userText" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="passText" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

        <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="registerButton" runat="server" Class="btn btn-success" Text="Register" OnClick="registerButton_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>

        </div>
    
</asp:Content>

