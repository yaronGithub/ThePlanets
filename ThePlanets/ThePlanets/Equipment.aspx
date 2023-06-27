<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Equipment.aspx.cs" Inherits="ThePlanets.Equipment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Space Equipment</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Deep Space Network 35 Meter Antenna</h2>
    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2395" width="45%" height="450px" frameborder="0"></iframe>
    
    <h2>NASA's Juno Jupiter orbiter</h2>
    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2376" width="45%" height="450px" frameborder="0"></iframe>

    <h2>Curiosity Mars rover</h2>
    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2398" width="45%" height="450px" frameborder="0"></iframe>
    
    <h2>MAVEN Mars orbiter</h2>
    <iframe src="https://solarsystem.nasa.gov/gltf_embed/2371" width="45%" height="450px" frameborder="0"></iframe>
</asp:Content>
