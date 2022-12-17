<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1203._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Ace Flicker</h1>
        <hr>
        <p class="lead">Ace Flicker is an emerging second-hand book trading website founded by graduate students of Taiwan University of Science and Technology.</p>
        <p class="lead">It provides buyers and sellers with comprehensive trading functions and a new shopping experience.</p>
        <p><a href="https://localhost:44345/About" class="btn btn-primary btn-lg"  style="background-color:orange; border-radius:5px;border:0px">Learn more &raquo;</a></p>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <h3 style="color:orangered"><font face="monospace"><strong>Highest Score</strong></font></h3>
           <img src="https://www.calcchat.com/images/book_covers/calc10e.jpg" alt="book1" width="150" height="200">
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948"  style="background-color:orange; border-radius:5px;border:0px">Learn more &raquo;</a>
            </p>
        </div>
         <div class="col-md-4">
            <h3 style="color:orangered"><font face="monospace"><strong>Most Bought</strong></font></h3>
           <img src="https://m.media-amazon.com/images/I/51Yyb-FGmRL.jpg" alt="book2" width="150" height="200">
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948"  style="background-color:orange; border-radius:5px;border:0px">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h3 style="color:orangered"><font face="monospace"><strong>Latest On Shelf</strong></font></h3>
           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnkFRou9Bq1QTanre5nzyhyvoZTMnX2eeEZA&usqp=CAU" alt="book3" width="150" height="200">
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948"  style="background-color:orange; border-radius:5px;border:0px">Learn more &raquo;</a>
            </p>
        </div>
        <!--
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
        !-->
    </div>
    

</asp:Content>
