<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Astroids.aspx.cs" Inherits="ThePlanets.Astroids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Astroids</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="contentTable">
            <tr>
                <td><img src="https://www.spacereference.org/static/images/generic-asteroid.png"/></td>
                <td><iframe src="https://solarsystem.nasa.gov/gltf_embed/2403" width="1340px" height="700px" frameborder="0"></iframe></td>
            </tr>
        </table>
</asp:Content>
