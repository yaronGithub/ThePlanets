<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Uranus.aspx.cs" Inherits="ThePlanets.Uranus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Uranus</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="contentTable">
        <tr>
            <td><img src="pics/uranus.jpg" style="height: 550px;" /></td>
            <td><p>Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.</p></td>
        </tr>
    </table>

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2344" width="100%" height="450px" frameborder="0" />
</asp:Content>
