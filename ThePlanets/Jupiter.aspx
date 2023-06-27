<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Jupiter.aspx.cs" Inherits="ThePlanets.Jupiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Jupiter</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="contentTable">
        <tr>
            <td><img src="pics/jupiter.png"/></td>
            <td><p>Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium.</p></td>
        </tr>
    </table>

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2375" width="100%" height="450px" frameborder="0" />
</asp:Content>
