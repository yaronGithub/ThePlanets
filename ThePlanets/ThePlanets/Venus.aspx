<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Venus.aspx.cs" Inherits="ThePlanets.Venus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Venus</title>
    <script type="text/javascript">
        function changeVenImg() {
            imgVen.src = "pics/structure_venus.png";
        }
        function changeStructImg() {
            imgVen.src = "pics/venus.png";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="contentTable">
        <tr>
            <td><img name="imgVen" src="pics/venus.png" onmouseover="changeVenImg()" onmouseout="changeStructImg()"/></td>
            <td><p>Venus is the second planet from the Sun and Earth's closest planetary neighbor. Even though Mercury is closer to the Sun, Venus is the hottest planet in our solar system. Its thick atmosphere is full of the greenhouse gas carbon dioxide, and it has clouds of sulfuric acid.</p></td>
        </tr>
    </table>

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2343"  width="100%" height="450px" frameborder="0" />
</asp:Content>
