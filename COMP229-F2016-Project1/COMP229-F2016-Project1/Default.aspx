<%@ Page Title="" Language="C#" MasterPageFile="~/GameTracker.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F2016_Project1.Default" %>
<%-- 	Author's name: Sahil Mahajan
     	Student	Number:	300881428
        Date Modified: October 25th, 2016
        Version	History:Part-1.Project Concept & Setup, 
                        Part-2.Main	Game Tracking Page, DB & Partial Function
                        Part-3.Full Functionality & Site Security
        File Description: Aspx file. Default.aspx, Displays four games for a particular week, also shows the added functionality if the user is signed in (admin). 	
    --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%-- Admin User Game Display --%>
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <div class="container jumbotron">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Game Stats
                    <small>Secondary Text</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Games Row -->
        <div class="row">
        <%-- Admin -Game 1 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game1_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game1_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game1_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game1_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game1_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game1_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                    <div  class="col-md-3 text-right">
                        <h3><asp:LinkButton ID="game1_edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton></h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game1_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
            <%-- Admin -Game 2 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game2_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game2_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game2_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game2_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game2_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game2_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                    <div  class="col-md-3 text-right">
                        <h3><asp:LinkButton ID="game2_edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton></h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game2_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
        </div>
        <!-- /.row -->

        <!-- Games Row -->
        <div class="row">
        <%-- Admin -Game 3 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game3_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game3_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game3_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game3_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game3_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game3_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                    <div  class="col-md-3 text-right">
                        <h3><asp:LinkButton ID="game3_edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton></h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game3_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
            <%-- Admin -Game 4 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game4_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game4_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game4_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game4_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game4_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game4_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                    <div  class="col-md-3 text-right">
                        <h3><asp:LinkButton ID="game4_edit" runat="server"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</asp:LinkButton></h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game4_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
        </div>
        <!-- /.row -->

        <hr />

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_1" runat="server" OnClick="link_week_1_Click">Week 1</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_2" runat="server" OnClick="link_week_2_Click">Week 2</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_3" runat="server" OnClick="link_week_3_Click">Week 3</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_4" runat="server" OnClick="link_week_4_Click">Week 4</asp:LinkButton>

                    </li>
                    <li>
                        <a href="#"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

    </div>
        </LoggedInTemplate>
    <%-- General User Game Display --%>
         <AnonymousTemplate>
             <!-- Page Content -->
    <div class="container jumbotron">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Game Stats
                    <small>Secondary Text</small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

       <!-- Games Row -->
        <div class="row">
        <%-- General user-Game 1 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game1_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game1_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game1_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game1_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game1_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game1_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game1_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
            <%-- General user-Game 2 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game2_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game2_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game2_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game2_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game2_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game2_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game2_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
        </div>
        <!-- /.row -->

        <!-- Games Row -->
        <div class="row">
         <%-- General user-Game 3 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game3_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game3_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game3_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game3_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game3_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game3_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game3_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
             <%-- General user-Game 4 --%>
            <div class="col-md-6">
                <div class="row ">
                    <%-- Team 1 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 1 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game4_team1_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />
                        </div>
                        <%-- Team 1 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5>
                                <asp:Label ID="game4_team1_name" runat="server" Text="Team 1"></asp:Label>
                            </h5>
                        </div>
                        </div>
                    </div>

                    <%-- vs --%>
                    <div class="col-md-2 col-sm-2 col-xs-2">
                        <div class="row myNewDivHeight">
                        <%-- VS --%>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                           <%-- <div class="row">
                                <h3 class="text-center">VS</h3>
                            </div>--%>
                                <h3 class="text-center">
                                    <asp:Label ID="game4_score" runat="server" Text="1:1"></asp:Label>
                                </h3>
                        </div>
                        </div>
                    </div>

                    <%-- Team 2 --%>
                    <div class="col-md-5 col-sm-5 col-xs-5">
                        <div class="row myNewDivHeight">
                        <%-- Team 2 name --%>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <h5 class="text-right">
                                <asp:Label ID="game4_team2_name" runat="server" Text="Team 2"></asp:Label>
                            </h5>
                        </div>
                             <%-- Team 2 logo --%>
                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                            <asp:Image ID="game4_team2_logo" runat="server" CssClass="img-responsive" ImageUrl="~/Images/Game1.png" />                            
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-9">
                        <h3>
                            <asp:HyperLink ID="game4_name" runat="server">Game One</asp:HyperLink>
                        </h3>
                    </div>
                </div>
                <p>                                
                    <asp:Label ID="game4_short_description" runat="server" Text="Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius."></asp:Label>
                </p>
            </div>
            
        </div>
        <!-- /.row -->

        <hr />

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_1" runat="server" OnClick="link_week_1_Click">Week 1</asp:LinkButton>
                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_2" runat="server" OnClick="link_week_2_Click">Week 2</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_3" runat="server" OnClick="link_week_3_Click">Week 3</asp:LinkButton>

                    </li>
                    <li>
                        <asp:LinkButton ID="link_week_4" runat="server" OnClick="link_week_4_Click">Week 4</asp:LinkButton>

                    </li>
                    <li>
                        <a href="#"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

       

       

    </div>
    <!-- /.container -->
        </AnonymousTemplate>
    </asp:LoginView>
    
</asp:Content>
