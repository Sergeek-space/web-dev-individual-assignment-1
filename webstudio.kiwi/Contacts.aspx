<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="webstudio.kiwi.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label Class="lblHeader1" runat="server" Text="Contacts"></asp:Label>

    <asp:Label runat="server" Text="Call Us: " /><a href="tel:+642041820586">+64(204)1820586</a>
    <br />
    <asp:Label runat="server" Text="Email Us: " /><a href="mailto:info@webstudio.kiwi">info@webstudio.kiwi</a>
    <br />
    <br />    

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.7180791868777!2d174.71830641524977!3d-36.873166379933544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d471b377a501d%3A0xd67af95228903ac4!2s28A%20Linwood%20Avenue%2C%20Mount%20Albert%2C%20Auckland%201025!5e0!3m2!1sen!2snz!4v1616979977368!5m2!1sen!2snz" width="900" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    <br />
    <br />

</asp:Content>
