<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="WebApplication1203.Trans.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Orders" DataTextField="User_ID" DataValueField="User_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="Orders" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Transaction_ID" DataSourceID="Trans">
        <Columns>
            <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" InsertVisible="False" ReadOnly="True" SortExpression="Transaction_ID" />
            <asp:BoundField DataField="Seller_ID" HeaderText="Seller_ID" SortExpression="Seller_ID" />
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Buyer_ID" HeaderText="Buyer_ID" SortExpression="Buyer_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Trans" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Transactions] WHERE ([Buyer_ID] = @Buyer_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Buyer_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
