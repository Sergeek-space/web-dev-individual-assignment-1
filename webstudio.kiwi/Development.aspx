<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Development.aspx.cs" Inherits="webstudio.kiwi.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label Class="lblHeader1" runat="server" Text="Web Development"></asp:Label>

    <div class="prdList">
        
        <asp:DataList Class="WebDevDataList1" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <asp:Label Class="prdTitleLabel" runat="server" Text="Package Name:"></asp:Label>
                <asp:Label ID="prdTypeLabel" runat="server" Text='<%# Eval("prdType") %>' />
                
                <br />
                <asp:Label Class="prdTitleLabel" runat="server" Text="Description:"></asp:Label>
                <asp:Label ID="prdDescriptionLabel" runat="server" Text='<%# Eval("prdDescription") %>' />
                <br />
                <asp:Label Class="prdTitleLabel" runat="server" Text="Price:"></asp:Label>
                <asp:Label ID="prdPriceLabel" runat="server" Text='<%# "NZD " + Eval("prdPrice") %>' />
                <br />
<%
                HttpCookie myCookie = Request.Cookies["Cookie1"];
                if (myCookie == null)
                {%>
                    <asp:Label Class="lblWarning" runat="server" Text="Sorry! Only authorised users can adding to the cart. Please, login <a href='Login.aspx'>here</a>" ></asp:Label>
                <%}
                else
                {%>
                    <asp:Button Class="btnViewMore" ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
                <%}%>
                
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString %>" SelectCommand="SELECT * FROM [tblWebDev]"></asp:SqlDataSource>
        
    </div>

</asp:Content>
