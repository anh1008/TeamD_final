<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication1203.Products.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Product" DataTextField="Title" DataValueField="Product_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="Product" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_ID" DataSourceID="detail">
        <EditItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Category_ID:
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Categories" DataTextField="Description" DataValueField="Category_ID" SelectedValue='<%# Bind("Category_ID") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="Categories" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <br />
            Payment_seller:
            <asp:TextBox ID="Payment_sellerTextBox" runat="server" Text='<%# Bind("Payment_seller") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Condition:
            <asp:TextBox ID="ConditionTextBox" runat="server" Text='<%# Bind("Condition") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_ID:
            <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Category_ID:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Categories" DataTextField="Description" DataValueField="Category_ID" SelectedValue='<%# Bind("Category_ID") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="Categories" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            <br />
            Payment_seller:
            <asp:TextBox ID="Payment_sellerTextBox" runat="server" Text='<%# Bind("Payment_seller") %>' />
            <br />
            Location:
            <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Condition:
            <asp:TextBox ID="ConditionTextBox" runat="server" Text='<%# Bind("Condition") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Category_ID:
            <asp:Label ID="Category_IDLabel" runat="server" Text='<%# Bind("Category_ID") %>' />
            <br />
            Payment_seller:
            <asp:Label ID="Payment_sellerLabel" runat="server" Text='<%# Bind("Payment_seller") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Bind("Location") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Condition:
            <asp:Label ID="ConditionLabel" runat="server" Text='<%# Bind("Condition") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="detail" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Product_ID] = @Product_ID" InsertCommand="INSERT INTO [Products] ([Product_ID], [Title], [Category_ID], [Payment_seller], [Location], [Country], [Condition], [Price]) VALUES (@Product_ID, @Title, @Category_ID, @Payment_seller, @Location, @Country, @Condition, @Price)" SelectCommand="SELECT * FROM [Products] WHERE ([Product_ID] = @Product_ID)" UpdateCommand="UPDATE [Products] SET [Title] = @Title, [Category_ID] = @Category_ID, [Payment_seller] = @Payment_seller, [Location] = @Location, [Country] = @Country, [Condition] = @Condition, [Price] = @Price WHERE [Product_ID] = @Product_ID">
        <DeleteParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Category_ID" Type="Int32" />
            <asp:Parameter Name="Payment_seller" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Condition" Type="Double" />
            <asp:Parameter Name="Price" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Product_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Category_ID" Type="Int32" />
            <asp:Parameter Name="Payment_seller" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Condition" Type="Double" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Product_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
