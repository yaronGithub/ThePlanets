<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mercury.aspx.cs" Inherits="ThePlanets.Mercury" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Mercury</title>
    <script type="text/javascript">
        function changeMerImg() {
            imgMer.src = "pics/structure_mercury.png";
        }
        function changeStructImg() {
            imgMer.src = "pics/mercury.png";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="contentTable">
        <tr>
            <td><img name="imgMer" src="pics/mercury.png" onmouseover="changeMerImg()" onmouseout="changeStructImg()"/></td>
            <td><p>It is the smallest planet in the Solar System, with an equatorial radius of 2,439.7 kilometres (1,516.0 mi). Mercury is also smaller—albeit more massive—than the largest natural satellites in the Solar System, Ganymede and Titan. Mercury consists of approximately 70% metallic and 30% silicate material.</p></td>
        </tr>
    </table>
    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2369" width="100%" height="450px" frameborder="0"/>
</asp:Content>
