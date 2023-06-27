<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Earth.aspx.cs" Inherits="ThePlanets.Earth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets - Earth</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="contentTable" cellpading="10" cellspacing="10">
        <tr>
            <td style="color:white;"><h1><%Response.Write(date);%></h1></td>
        </tr>
        <tr>
            <td><img src="pics/earth-image.png" style="height: 550px;" /></td>
            <td>
                <table>
                    <tr><td><p>Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System. Of the four rocky planets, it is the largest and most massive. Earth is about eight light minutes away from the Sun and orbits it, taking a year (about 365.25 days) to complete one revolution.</p></td></tr>
                    <tr>
                        <td>
                            <iframe width="900" height="330" src="https://www.youtube.com/embed/86YLFOog4GM?autoplay=1&mute=1&controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table> 

    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2392/" width="100%" height="450px" frameborder="0"/>
</asp:Content>
