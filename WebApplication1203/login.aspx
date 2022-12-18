<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1203.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    
    .button {
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    position: relative;
    }
    </style>
  
    <div style="position:relative; top: 0px; text-align: center;">
        <h2>Welcome！</h2>
        <br>
        <form action="foodpanda.html" method="get">
            <label for="name" >User ID</label>
            <input type="text" id="name" name="name">
            <br><br>
            <label for="pw">Password</label>
            <input type="text" id="pw" name="pw">
            <br>
            <input type="submit" value="Sign in" style="position: relative; top:20px ;"><br><br>
            <p>or</p>
            <button class="button"  style="background-color:orange;  border-radius:5px; border:0px"">Sign up</button>
            </form>
    </div>
</asp:Content>
