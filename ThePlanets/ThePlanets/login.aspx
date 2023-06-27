<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ThePlanets.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <title>Login Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1><% Response.Write(msg); %> </h1>
        <% if (Session["admin"] == null && Session["user"] == null)
            { %>
        <form action="login.aspx" method="post" autocomplete="off" style="margin-right: 1500px;">
            <input type="text" name="userName" placeholder="Enter Username" minlength="3" maxlength="10" required/>
            <input type="password" name="psw" placeholder="Enter Password" minlength="4" maxlength="16" required/>
            <input type="submit" value="send" name="subLogin"/>
        </form>
        <% } %>

        <% if (Session["admin"] != null || Session["user"] != null)
            {
                %>
        <h1>disconnection</h1>

        <form action="login.aspx" method="post">
            <input type="submit" name="subDisconnect" value="disconnect"/>
        </form>
        <% } %>
    </center>
</asp:Content>
