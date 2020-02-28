﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dinner.aspx.cs" Inherits="Dinner" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-md-4" style="margin-top : 20px;">
                    <div class="card " >
                        <img class="card-img-top" src="images/foods/<%#Eval("img")%>.jpg" alt="Card image cap" height="180" width="180">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("name")%></h5>
                             <p class="card-text"><%#Eval("description")%></p>
                            <asp:Label ID="idd" runat="server" Visible="false" Text='<%# Eval("id") %>'></asp:Label>
                            <asp:Button ID="Button1" AccessKey=<%#Eval("id") %> CssClass="btn btn-primary" runat="server" Text=<%#Eval("price")%> OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

