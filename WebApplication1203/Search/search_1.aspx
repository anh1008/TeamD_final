<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search_1.aspx.cs" Inherits="WebApplication1203.Search.search_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;</p>
        Search  _   by  _   product     (ID)     :  
    <asp:TextBox ID="Search_box" runat="server" Height="27px" Width="138px"></asp:TextBox>
    <asp:Button ID="enter_button" runat="server" Text="Enter" Height="31px" Width="66px" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF9999" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" Height="484px" Width="1256px">
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" SortExpression="Category_ID" />
            <asp:BoundField DataField="Payment_seller" HeaderText="Payment_seller" SortExpression="Payment_seller" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString_Search %>" SelectCommand="SELECT * FROM [Products] WHERE ([Product_ID] = @Product_ID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="" Name="Product_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>
    