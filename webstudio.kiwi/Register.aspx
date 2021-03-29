<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="webstudio.kiwi.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Label Class="lblHeader1" runat="server" Text="User Registration" ></asp:Label>
    
<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblFirstName" runat="server" Text="Enter your first name:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtFirstName" runat="server" Width="329px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFirstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please, enter your first name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblLastName" runat="server" Text="Enter your last name:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtLastName" runat="server" Width="329px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredLastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please, enter your last name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblEmail" runat="server" Text="Enter your Email:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtEmail" runat="server" Width="329px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredEmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please, enter your email" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="EmailInputValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please, enter correct email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPassword1" runat="server" Text="Enter your password:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPassword1" runat="server" Width="329px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredPassword1Validator" runat="server" ControlToValidate="txtPassword1" ErrorMessage="Please, enter your password" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPassword2" runat="server" Text="Repeat your password:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPassword2" runat="server" Width="329px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredPassword2Validator" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Please, repeat your password" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ComparePasswordValidator" runat="server" ControlToCompare="txtPassword2" ControlToValidate="txtPassword1" ErrorMessage="Password input does not match" ForeColor="Red">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button Class="btnViewMore" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />

        </td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
