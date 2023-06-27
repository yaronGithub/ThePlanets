<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ThePlanets.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Administrator Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>hello administrator</h1>
    <center>
        <h1>DB</h1>
        <% Response.Write(usersList); %>

        <h1>filter DB</h1>
        <form action="AdminPage.aspx" method="post">
            <select name="field">
                <option value="fname">First Name</option>
                <option value="lname">Last Name</option>
                <option value="Email">Email</option>
                <option value="pass">Password</option>
                <option value="gender">Gender</option>
                <option value="dateOfBirth">dateOfBirth</option>
                <option value="country">country</option>
            </select>
            <input type="text" name="fieldValue"/>
            <input type="submit" name="filter" value="filter"/>
            <br />
            <input type="submit" name="fullDB" value="show full DB"/>
        </form>

        <h1>delete users in DB</h1>

        <form action="AdminPage.aspx" method="post">
            <h4>Delete according to fname:</h4><input type="text" name="userNameD"/>
            <input type="submit" name="delete" value="Delete user"/>
        </form>
    </center>
    <h1><a href="login.aspx">log out</a></h1>
</asp:Content>
