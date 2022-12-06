<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication1203.Trans.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Transactions" DataTextField="Transaction_ID" DataValueField="Transaction_ID" AutoPostBack="True">
</asp:DropDownList>
<asp:SqlDataSource ID="Transactions" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString2 %>" SelectCommand="SELECT [Transaction_ID], [Seller_ID], [Price], [Status], [Buyer_ID] FROM [Transactions] ORDER BY [Transaction_ID]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Transaction_ID" DataSourceID="TransactionsDetail">
        <EditItemTemplate>
            Transaction_ID:
            <asp:Label ID="Transaction_IDLabel1" runat="server" Text='<%# Eval("Transaction_ID") %>' />
            <br />
            Seller_ID:
            <asp:TextBox ID="Seller_IDTextBox" runat="server" Text='<%# Bind("Seller_ID") %>' />
            <br />
            Product_ID:
            <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Buyer_ID:
            <asp:TextBox ID="Buyer_IDTextBox" runat="server" Text='<%# Bind("Buyer_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Seller_ID:
            <asp:TextBox ID="Seller_IDTextBox" runat="server" Text='<%# Bind("Seller_ID") %>' />
            <br />
            Product_ID:
            <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Buyer_ID:
            <asp:TextBox ID="Buyer_IDTextBox" runat="server" Text='<%# Bind("Buyer_ID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Transaction_ID:
            <asp:Label ID="Transaction_IDLabel" runat="server" Text='<%# Eval("Transaction_ID") %>' />
            <br />
            Seller_ID:
            <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Bind("Seller_ID") %>' />
            <br />
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Buyer_ID:
            <asp:Label ID="Buyer_IDLabel" runat="server" Text='<%# Bind("Buyer_ID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="TransactionsDetail" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString3 %>" DeleteCommand="DELETE FROM [Transactions] WHERE [Transaction_ID] = @Transaction_ID" InsertCommand="INSERT INTO [Transactions] ([Seller_ID], [Product_ID], [Price], [Status], [Buyer_ID]) VALUES (@Seller_ID, @Product_ID, @Price, @Status, @Buyer_ID)" SelectCommand="SELECT [Transaction_ID], [Seller_ID], [Product_ID], [Price], [Status], [Buyer_ID] FROM [Transactions] WHERE ([Transaction_ID] = @Transaction_ID)" UpdateCommand="UPDATE [Transactions] SET [Seller_ID] = @Seller_ID, [Product_ID] = @Product_ID, [Price] = @Price, [Status] = @Status, [Buyer_ID] = @Buyer_ID WHERE [Transaction_ID] = @Transaction_ID">
        <DeleteParameters>
            <asp:Parameter Name="Transaction_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Seller_ID" Type="Int32" />
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Buyer_ID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Transaction_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Seller_ID" Type="Int32" />
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Buyer_ID" Type="Int32" />
            <asp:Parameter Name="Transaction_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
