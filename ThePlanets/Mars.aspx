<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mars.aspx.cs" Inherits="ThePlanets.Mars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Mars</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="contentTable">
        <tr>
            <td><img src="pics/mars.png"/></td>
            <td><p>​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.</p></td>
        </tr>
    </table>

    <iframe src="https://mars.nasa.gov/gltf_embed/24881" width="100%" height="450px" frameborder="0" />
</asp:Content>
