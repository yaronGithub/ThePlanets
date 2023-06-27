<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sun.aspx.cs" Inherits="ThePlanets.Sun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Sun</title>
    <script type="text/javascript">
        /* This functions are changing the pictures in the same place */
        function changeSunImg() {
            imgSun.src = "pics/structure_sun.png";
        }
        function changeStructImg() {
            imgSun.src = "pics/the-sun.png";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="contentTable">
        <tr>
            <td><div class="overflow"><img name="imgSun" src="pics/the-sun.png" style="height: 650px;" onmouseover="changeSunImg()" onmouseout="changeStructImg()"/></div></td>
            <td>
                <table>
                    <tr><td><p><strong>Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core. The Sun radiates this energy mainly as light, ultraviolet, and infrared radiation, and is the most important source of energy for life on Earth.</strong></p></td></tr>
                    <tr>
                        <td>
                            <video onloadstart="this.volume=0.03" controls autoplay loop height="400">
                                <source src="vids/sun-video.mp4" type="video/mp4"/>
                                <source src="vids/sun-audio.mp3" type="video/mp3"/>
                            </video>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2352" width="100%" height="450px" frameborder="0" />
</asp:Content>
