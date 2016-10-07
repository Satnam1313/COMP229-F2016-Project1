<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F2016_Project1.Default" %>
<%-- 	Author's name: Sahil Mahajan
    	Student	Number:	300881428
        Date Modified: October 7th, 2016
        Short Version History: 10 Commits, Started on the initial structure of the main page, and made revisions.
        File Description: Default.aspx file.
    	--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>GameTrackerProject1</title>
                    <%-- CSS Section --%>

    <%-- Bootstrap CSS --%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <%-- Fontawesome CSS --%>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <%-- Raleway Font --%>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" /> 
    <%-- Custom css --%>
    <link href="Content/app.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    
    <%-- Navbar --%>
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="Images/SahilLogo.png" /></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
             <ul class="nav navbar-nav navbar-right">
            <li class="nav-paddingMiddle"><a href="/"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
            <li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a></li>
            <li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign in</a></li>
        
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

        <!-- Page Content -->
    <div class="container">

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
            <div class="col-md-6">
                <a href="#">
                    <img class="img-responsive" src="/Images/Game1.png" alt="" />
                </a>
                <h3>
                    <a href="#">Game One</a>
                </h3>
                <p>Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius. </p>
            </div>
            <div class="col-md-6">
                <a href="#">
                    <img class="img-responsive" src="/Images/Game2.png" alt="" />
                </a>
                <h3>
                    <a href="#">Game Two</a>
                </h3>
                <p>Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius. </p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Games Row -->
        <div class="row">
            <div class="col-md-6">
                <a href="#">
                    <img class="img-responsive" src="/Images/Game3.png" alt="" />
                </a>
                <h3>
                    <a href="#">Game Three</a>
                </h3>
                <p>Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius. </p>
            </div>
            <div class="col-md-6">
                <a href="#">
                    <img class="img-responsive" src="/Images/Game4.png" alt="" />
                </a>
                <h3>
                    <a href="#">Game Four</a>
                </h3>
                <p>Lorem ipsum dolor sit amet, duo purto deserunt eu, et quo quodsi dolorem. Eum no mucius animal, stet menandri quaerendum ut ius. </p>
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
                    <li class="active">
                        <a href="#">Week 1</a>
                    </li>
                    <li>
                        <a href="#">Week 2</a>
                    </li>
                    <li>
                        <a href="#">Week 3</a>
                    </li>
                    <li>
                        <a href="#">Week 4</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <hr />

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; SahilProject1 <%= DateTime.Now.Year %></p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    </form>
                    <%-- JavaScript Section --%>

    <%-- jquery --%>
    <script src="Scripts/jquery-2.2.4.min.js"></script>
    <%-- bootstrap --%>
    <script src="Scripts/bootstrap.min.js"></script>
    <%-- Custom js --%>
    <script src="Scripts/app.js"></script>
</body>
</html>
