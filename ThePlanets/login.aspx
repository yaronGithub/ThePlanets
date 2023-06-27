<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ThePlanets.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login Page</title>
    <script type="text/javascript">
        function check() {
            // User name
            if (loginForm.userName.value == 0) {
                alert("You haven't written your name.");
                loginForm.userName.focus();
                return false;
            }
            if (loginForm.userName.value.length > 8) {
                alert("Your name can't be over 8 characters.");
                loginForm.userName.focus();
                return false;
            }
            if (loginForm.userName.value.length == 1) {
                alert("Your name is too short.");
                loginForm.userName.focus();
                return false;
            }

            // Password
            if (loginForm.psw.value.length == 0) {
                alert("You haven't written your password.");
                loginForm.psw.focus();
                return false;
            }
            if (loginForm.psw.value.length < 4) {
                alert("Your password is too short.");
                loginForm.psw.focus();
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1><% Response.Write(msg); %> </h1>
        <% if (Session["admin"] == null && Session["user"] == null)
            { %>
        <form action="login.aspx" method="post" name="loginForm" autocomplete="off" style="margin-right: 1500px;">
            <input type="text" name="userName" placeholder="Enter username"/>
            <input type="password" name="psw" placeholder="Enter password"/>
            <input type="submit" value="Send" name="subLogin" onclick="return check()"/>
            <p>Don't have an account? <a href="SignUp.aspx">Sign up</a>.</p>
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
