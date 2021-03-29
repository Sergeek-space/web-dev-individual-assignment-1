<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webstudio.kiwi.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label Class="lblHeader1" runat="server" Text="Login" ></asp:Label>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUserId" runat="server" Text="Enter your user ID (Email):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserId" runat="server" Width="320px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredUserIdValidator" runat="server" ControlToValidate="txtUserId" ErrorMessage="Plese, enter your user ID (Email)" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPassword" runat="server" Text="Enter your Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="320px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredPasswordValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please, enter your password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button Class="btnViewMore" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br />
    <asp:Label Class="lblWarning" runat="server" Text="New here? Please <a href ='Register.aspx'>register</a> now"></asp:Label>
    <br />
    <br />


</asp:Content>
