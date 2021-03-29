<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webstudio.kiwi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
        <table id="tblHello">
             <tr>
                <td>
                    <p><asp:Label Class="lblHeader1" runat="server" Text="Hello!" ></asp:Label></p>
                    <br />
                    <b>Quality Web Design, Web Development & Hosting</b>
                    <br /><br />
                     WebStudio.kiwi is a Web Design & Digital Marketing company creating campaigns for companies of all sizes. Our dedicated team has the experience, know-how, and passion for creating effective websites, affordable online business tools that are simple to use, and achieving optimal results for both your company profile and your bottom line. As a top web development company, we build robust web-based solutions using the latest web technologies. We offer all types of web development services. All of our websites provide responsive design for computers, tablets, and cell phones. We are aiming to be the best web design company in New Zealand. Contact WebStudio.kiwi for an attractive, easy to use website that will get you noticed.
                </td>
                <td id="imgHelloContainer"><img id="imgHello" src="Images/hello-img.jpg" /></td>
            </tr>
        </table>
        <br />
        <br />

        <div class="">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="prdId">
            <AlternatingItemTemplate>

                <td Class="prdListTd" runat="server" allign="center" style="background-color:#FFF8DC;text-align: center;">

                    <asp:Image Class="imgPrdList" runat="server" src='<%# "/Images/Thumbnails/"+ Eval("prdId") +".jpg" %>' />
                    <br />
                    
                    <asp:Label Class="prdTitleLabel" runat="server" Text='<%# Eval("prdTitle") %>' />
                    <br />
                    <br />
                    
                    <asp:Label Class="prdDescriptionLabel" runat="server" Text='<%# Eval("prdDescription") %>' />
                    <br />
                    <br />

                    <asp:Button Class="btnViewMore" runat="server" PostBackUrl='<%# "~/"+ Eval("prdUrl") +".aspx" %>' Text="VIEW MORE"  />
                    
                    
                </td>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #008A8C; color: #FFFFFF;">prdTitle:
                    <asp:TextBox ID="prdTitleTextBox" runat="server" Text='<%# Bind("prdTitle") %>' />
                    <br />
                    prdDescription:
                    <asp:TextBox ID="prdDescriptionTextBox" runat="server" Text='<%# Bind("prdDescription") %>' />
                    <br />
                    prdId:
                    <asp:Label ID="prdIdLabel1" runat="server" Text='<%# Eval("prdId") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">prdTitle:
                    <asp:TextBox ID="prdTitleTextBox" runat="server" Text='<%# Bind("prdTitle") %>' />
                    <br />prdDescription:
                    <asp:TextBox ID="prdDescriptionTextBox" runat="server" Text='<%# Bind("prdDescription") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>

                <td runat="server" style="background-color:#DCDCDC;color: #000000;text-align: center;">
                   
                    <asp:Image Class="imgPrdList" runat="server" src='<%# "/Images/Thumbnails/"+ Eval("prdId") +".jpg" %>' />
                    <br />
                    
                    <asp:Label Class="prdTitleLabel" runat="server" Text='<%# Eval("prdTitle") %>' />
                    <br />
                    <br />
                    
                    <asp:Label Class="prdDescriptionLabel" runat="server" Text='<%# Eval("prdDescription") %>' />
                    <br />
                    <br />

                    <asp:Button Class="btnViewMore" runat="server" PostBackUrl='<%# "~/"+ Eval("prdUrl") +".aspx" %>' Text="VIEW MORE"  />

                </td>

            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">prdTitle:
                    <asp:Label ID="prdTitleLabel" runat="server" Text='<%# Eval("prdTitle") %>' />
                    <br />
                    prdDescription:
                    <asp:Label ID="prdDescriptionLabel" runat="server" Text='<%# Eval("prdDescription") %>' />
                    <br />
                    prdId:
                    <asp:Label ID="prdIdLabel" runat="server" Text='<%# Eval("prdId") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString %>" SelectCommand="SELECT [prdTitle], [prdDescription], [prdId], [prdUrl] FROM [tblPrdList]"></asp:SqlDataSource>
     </div>
     <br />
     <br />

</asp:Content>
