<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search_1.aspx.cs" Inherits="WebApplication1203.Search.search_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;</p>
        Search_by_something :  
    <asp:TextBox ID="Search_box" runat="server" Height="27px" Width="138px"></asp:TextBox>
    <asp:Button ID="enter_button" runat="server" Text="Enter" Height="31px" Width="66px" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </p>
</asp:Content>
    