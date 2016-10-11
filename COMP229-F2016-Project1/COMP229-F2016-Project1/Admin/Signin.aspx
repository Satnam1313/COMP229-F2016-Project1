<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="COMP229_F2016_Project1.Admin.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- Bootstrap CSS --%>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <%-- Fontawesome CSS --%>
    <link href="/Content/font-awesome.min.css" rel="stylesheet" />
    <%-- Raleway Font --%>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" /> 
    <%-- Custom css --%>
    <link href="/Content/app.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-sign-in" aria-hidden="true"></i> Sign in</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_sigin_email" runat="server" class="form-control input-lg" placeholder="Email address" ValidationGroup="signin"></asp:TextBox>
		    </div>
        </div>
		
        <div class="row">
		    <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_signin_password" runat="server" class="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="signin"></asp:TextBox>
		    </div>
        </div>

		<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_singin" runat="server" class="btn btn-lg btn-success btn-block" Text="Sign in" ValidationGroup="signin"/>
			</div>
		</div>
	</div>

    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-pencil" aria-hidden="true"></i> Register</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_first_name" runat="server" class="form-control input-lg" placeholder="First name" ValidationGroup="register"></asp:TextBox>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_last_name" runat="server" class="form-control input-lg" placeholder="Last name" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_register_email" runat="server" class="form-control input-lg" placeholder="Email address" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password" runat="server" class="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="register"></asp:TextBox>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password_confirm" runat="server" class="form-control input-lg" placeholder="Confirm password" TextMode="password" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
			<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_register" runat="server" class="btn btn-lg btn-success btn-block" Text="Register" ValidationGroup="register" />
			</div>
		</div>
	</div>
</div>

</div>
    </form>

    <%-- jquery --%>
    <script src="/Scripts/jquery-2.2.4.min.js"></script>
    <%-- bootstrap --%>
    <script src="/Scripts/bootstrap.min.js"></script>
    <%-- Custom js --%>
    <script src="/Scripts/app.js"></script>


    <script>

    </script>
</body>
</html>
