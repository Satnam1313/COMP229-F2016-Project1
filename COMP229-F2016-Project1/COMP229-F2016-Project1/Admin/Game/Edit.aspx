<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="COMP229_F2016_Project1.Admin.Game.Edit" %>
<%-- 	Author's name: Sahil Mahajan
     	Student	Number:	300881428
        Date Modified: October 25th, 2016
        Version	History:Part-1.Project Concept & Setup, 
                        Part-2.Main	Game Tracking Page, DB & Partial Function
                        Part-3.Full Functionality & Site Security
        File Description: Aspx file. Edit page, allows the user to edit the game which is already in the database. 	
    --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="container jumbotron">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_game_name" runat="server" CssClass="form-control" placeholder="Game name"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:DropDownList ID="DropDownList_team_1" runat="server" DataSourceID="SqlDataSource_teams" DataTextField="team_name" DataValueField="team_id" CssClass="form-control dropdown"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSource_teams" ConnectionString='<%$ ConnectionStrings:game_trackerConnectionString %>' SelectCommand="SELECT [team_id], [team_name] FROM [team]"></asp:SqlDataSource>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:DropDownList ID="DropDownList_team_2" runat="server" DataSourceID="SqlDataSource_teams" DataTextField="team_name" DataValueField="team_id" CssClass="form-control dropdown"></asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_score_ht" runat="server" CssClass="form-control" placeholder="Half-time score"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_score_ft" runat="server" CssClass="form-control" placeholder="Full-time score"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_date" runat="server" CssClass="form-control" placeholder="Date"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_stadium_name" runat="server" CssClass="form-control" placeholder="Stadium name"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_referee_name" runat="server" CssClass="form-control" placeholder="Referee name"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_short_description" runat="server" CssClass="form-control" placeholder="Short description" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                <asp:TextBox ID="TextBox_spectators" runat="server" CssClass="form-control" placeholder="Number of spectators" TextMode="Number"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 text-right">
                <asp:Button ID="Button_submit" runat="server" CssClass="btn btn-success" Text="Update game" OnClick="Button_submit_Click"></asp:Button>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 ">
                <asp:Button ID="Button_home" runat="server" CssClass="btn btn-danger" Text="Home" OnClick="Button_home_Click"></asp:Button>
            </div>
        </div>

    </div>
</asp:Content>
