<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="webstudio.kiwi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label Class="lblHeader1" runat="server" Text="Web Design"></asp:Label>
     <div class="WebDesignDetailsView1">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="prdId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="1355px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="prdId"  InsertVisible="False" ReadOnly="True" SortExpression="prdId" Visible="False" HeaderText="prdId" />
                <asp:BoundField DataField="prdType"  SortExpression="prdType" HeaderText="Package Name: " />
                <asp:BoundField DataField="prdDescription"  SortExpression="prdDescription" HeaderText="Description: " />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString2 %>" SelectCommand="SELECT * FROM [tblWebDesign]">
        </asp:SqlDataSource>
   </div>
</asp:Content>
