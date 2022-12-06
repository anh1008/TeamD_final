<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication1203.Users.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Users" DataTextField="User_ID" DataValueField="User_ID">
</asp:DropDownList>
<asp:SqlDataSource ID="Users" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString4 %>" SelectCommand="SELECT [User_ID], [First_name], [Last_name], [Email] FROM [Users] ORDER BY [User_ID]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="User_ID" DataSourceID="usersDetail">
        <EditItemTemplate>
            User_ID:
            <asp:Label ID="User_IDLabel1" runat="server" Text='<%# Eval("User_ID") %>' />
            <br />
            First_name:
            <asp:TextBox ID="First_nameTextBox" runat="server" Text='<%# Bind("First_name") %>' />
            <br />
            Last_name:
            <asp:TextBox ID="Last_nameTextBox" runat="server" Text='<%# Bind("Last_name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            User_ID:
            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User_ID") %>'></asp:TextBox>
            <br />
            First_name:
            <asp:TextBox ID="First_nameTextBox" runat="server" Text='<%# Bind("First_name") %>' />
            <br />
            Last_name:
            <asp:TextBox ID="Last_nameTextBox" runat="server" Text='<%# Bind("Last_name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            User_ID:
            <asp:Label ID="User_IDLabel" runat="server" Text='<%# Eval("User_ID") %>' />
            <br />
            First_name:
            <asp:Label ID="First_nameLabel" runat="server" Text='<%# Bind("First_name") %>' />
            <br />
            Last_name:
            <asp:Label ID="Last_nameLabel" runat="server" Text='<%# Bind("Last_name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="usersDetail" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString5 %>" DeleteCommand="DELETE FROM [Users] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Users] ([User_ID], [First_name], [Last_name], [Email]) VALUES (@User_ID, @First_name, @Last_name, @Email)" SelectCommand="SELECT [User_ID], [First_name], [Last_name], [Email] FROM [Users] WHERE ([User_ID] = @User_ID)" UpdateCommand="UPDATE [Users] SET [First_name] = @First_name, [Last_name] = @Last_name, [Email] = @Email WHERE [User_ID] = @User_ID">
        <DeleteParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="User_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="First_name" Type="String" />
            <asp:Parameter Name="Last_name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="User_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
