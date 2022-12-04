<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1203.Categories._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<asp:FormView ID="FormView1" runat="server" DataKeyNames="Category_ID" DataSourceID="Categories" DefaultMode="Insert">
    <EditItemTemplate>
        Category_ID:
        <asp:Label ID="Category_IDLabel1" runat="server" Text='<%# Eval("Category_ID") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Category_ID:
        <asp:TextBox ID="Category_IDTextBox" runat="server" Text='<%# Bind("Category_ID") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        Category_ID:
        <asp:Label ID="Category_IDLabel" runat="server" Text='<%# Eval("Category_ID") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
    </ItemTemplate>
</asp:FormView>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_ID" DataSourceID="Categories" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" ReadOnly="True" SortExpression="Category_ID" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="Categories" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [Category_ID] = @Category_ID" InsertCommand="INSERT INTO [Categories] ([Category_ID], [Description]) VALUES (@Category_ID, @Description)" UpdateCommand="UPDATE [Categories] SET [Description] = @Description WHERE [Category_ID] = @Category_ID">
    <DeleteParameters>
        <asp:Parameter Name="Category_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Category_ID" Type="Int32" />
        <asp:Parameter Name="Description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Category_ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
&nbsp; 
</asp:Content>
