<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ThePlanets.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Planets | Home</title>
    <article class='feature_container' style='background-image: url(&#39;/internal_resources/6057/sshero.jpg&#39;);'>
    <link href='https://solarsystem.nasa.gov/internal_resources/6057/sshero.jpg' rel='image_src'>
    </article>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Our Solar System</h1>
    <p>The planetary system we call home orbits a star in an outer spiral arm of the vast Milky Way galaxy.</p>
    <img style="float: right" src="https://solarsystem.nasa.gov/internal_resources/6057/sshero.jpg" height:520px;
    width:100%/>
</asp:Content>
