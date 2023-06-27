<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="ThePlanets.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><% Response.Write(Session["user"].ToString()); %>'s profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hello <% Response.Write(Session["user"].ToString()); %>!</h1>
    <h1><a href="Update.aspx">Update</a></h1>
    <h1><a href="login.aspx">log out</a></h1>
</asp:Content>
