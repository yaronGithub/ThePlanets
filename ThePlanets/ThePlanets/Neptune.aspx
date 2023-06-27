<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Neptune.aspx.cs" Inherits="ThePlanets.Neptune" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Neptune</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="contentTable">
        <tr>
            <td><img src="pics/neptune.jpg" style="height: 550px;"/></td>
            <td><p>It's made of a thick soup of water, ammonia, and methane over an Earth-sized solid center. Its atmosphere is made of hydrogen, helium, and methane. The methane gives Neptune the same blue color as Uranus. Neptune has six rings, but they're very hard to see.</p></td>
        </tr>
    </table>

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2364" width="100%" height="450px" frameborder="0" />
</asp:Content>
