<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cms.aspx.cs" Inherits="webstudio.kiwi.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label Class="lblHeader1" runat="server" Text="Content Management"></asp:Label>

    <%
        HttpCookie myCookie = Request.Cookies["Cookie1"];
        if (myCookie == null)
        {%>
            <asp:Label Class="lblWarning" runat="server" Text="Warning! Only authorised users can see the content of this page. Please, login <a href='Login.aspx'>here</a>" ></asp:Label>
    <%  }
        else
        {
            if (myCookie.Values["role"] == "0")
            {%>
                <asp:Label Class="lblWarning" runat="server" Text="Sorry, you do not have enough rights to see the content of this page"></asp:Label>
    <%     }
             if (myCookie.Values["role"] == "1")
            {%> 
                    <asp:Label Class="lblWarning" runat="server" Text="Web Developement Services:"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="prdId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="prdId" HeaderText="prdId" InsertVisible="False" ReadOnly="True" SortExpression="prdId" Visible="False" />
                            <asp:BoundField DataField="prdType" HeaderText="Service Type" SortExpression="prdType" />
                            <asp:BoundField DataField="prdDescription" HeaderText="Description" SortExpression="prdDescription" />
                            <asp:BoundField DataField="prdPrice" HeaderText="Price" SortExpression="prdPrice" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString2 %>" DeleteCommand="DELETE FROM [tblWebDev] WHERE [prdId] = @prdId" InsertCommand="INSERT INTO [tblWebDev] ([prdType], [prdDescription], [prdPrice]) VALUES (@prdType, @prdDescription, @prdPrice)" SelectCommand="SELECT * FROM [tblWebDev]" UpdateCommand="UPDATE [tblWebDev] SET [prdType] = @prdType, [prdDescription] = @prdDescription, [prdPrice] = @prdPrice WHERE [prdId] = @prdId">
                        <DeleteParameters>
                            <asp:Parameter Name="prdId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="prdType" Type="String" />
                            <asp:Parameter Name="prdDescription" Type="String" />
                            <asp:Parameter Name="prdPrice" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="prdType" Type="String" />
                            <asp:Parameter Name="prdDescription" Type="String" />
                            <asp:Parameter Name="prdPrice" Type="Int32" />
                            <asp:Parameter Name="prdId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                   
                    <div class="borderedBlock"><table style="width: 100%;">
                        <tr><td><asp:Label ID="lblTblHeader" runat="server" Text="Add new record:"></asp:Label></td><td>&nbsp;</td><td>&nbsp;</td></tr>
                        <tr><td>&nbsp;</td><td><asp:Label ID="lblServiceType" runat="server" Text="Service Type: "></asp:Label></td>
                            <td><asp:TextBox ID="txtServiceType" runat="server"></asp:TextBox></td></tr>
                        <tr><td>&nbsp;</td><td><asp:Label ID="lblServicedescription" runat="server" Text="Description: "></asp:Label></td>
                             <td><asp:TextBox ID="txtServicedescription" runat="server"></asp:TextBox></td></tr>
                        <tr><td>&nbsp;</td><td><asp:Label ID="lblPrice" runat="server" Text="Price :"></asp:Label></td>
                             <td><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></td></tr>
                         <tr><td><asp:Button ID="btnAddRecord" runat="server" Text="Add Record" OnClick="btnAddRecord_Click" /></td><td>&nbsp;</td><td>&nbsp;</td></tr>
                    </table></div>

                    <asp:Label Class="lblWarning" runat="server" Text="Users/Customers:"></asp:Label>

                    Select User:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="userId" DataValueField="userId">
                        </asp:DropDownList>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString2 %>" SelectCommand="SELECT DISTINCT [userId] FROM [tblUsers]"></asp:SqlDataSource>
                        &nbsp;<asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                            <EditItemTemplate>
                                User Id:
                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                User Email:
                                <asp:TextBox ID="userIdTextBox" runat="server" Text='<%# Bind("userId") %>' />
                                <br />
                                User's First Name:
                                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                                <br />
                                User's Last Name:
                                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                                <br />
                                User Password:
                                <asp:TextBox ID="passwdTextBox" runat="server" Text='<%# Bind("passwd") %>' />
                                <br />
                                User Role (1 for admin, 0 for user):
                                <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                User Email:
                                <asp:TextBox ID="userIdTextBox" runat="server" Text='<%# Bind("userId") %>' />
                                <br />
                                User's First Name:
                                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                                <br />
                                User's Last Name:
                                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                                <br />
                                User Password:
                                <asp:TextBox ID="passwdTextBox" runat="server" Text='<%# Bind("passwd") %>' />
                                <br />
                                User Role (1 for admin, 0 for user):
                                <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                User Id:
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                User Email:
                                <asp:Label ID="userIdLabel" runat="server" Text='<%# Bind("userId") %>' />
                                <br />
                                User's First Name:
                                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
                                <br />
                                User's Last Name:
                                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                                <br />
                                User Password:
                                <asp:Label ID="passwdLabel" runat="server" Text='<%# Bind("passwd") %>' />
                                <br />
                                User Role (1 for admin, 0 for user):
                                <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
                                <br />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?')"></asp:LinkButton>  
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbWebStudioConnectionString2 %>" DeleteCommand="DELETE FROM [tblUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblUsers] ([userId], [firstName], [lastName], [passwd], [role]) VALUES (@userId, @firstName, @lastName, @passwd, @role)" SelectCommand="SELECT * FROM [tblUsers] WHERE ([userId] = @userId)" UpdateCommand="UPDATE [tblUsers] SET [userId] = @userId, [firstName] = @firstName, [lastName] = @lastName, [passwd] = @passwd, [role] = @role WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="userId" Type="String" />
                                <asp:Parameter Name="firstName" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="passwd" Type="String" />
                                <asp:Parameter Name="role" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="userId" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="userId" Type="String" />
                                <asp:Parameter Name="firstName" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="passwd" Type="String" />
                                <asp:Parameter Name="role" Type="Int32" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

    <%     }
         }%>
    
</asp:Content>
