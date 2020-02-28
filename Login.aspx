<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <h2>Login</h2>
        <hr /></div>
    <div class="container center-page">
        
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="userText" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="passText" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
        <div>
        <asp:CheckBox ID="CheckBox1" runat="server" />
            <label class="col-xs-11">Remember Me </label>

        </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="loginButton" runat="server" Class="btn btn-success" Text="Login" OnClick="loginButton_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>

        </div>
</asp:Content>

