<%@ Page Title="" Language="C#" MasterPageFile="~/GameTracker.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="COMP229_F2016_Project1.Signin" %>
<%-- 	Author's name: Sahil Mahajan
     	Student	Number:	300881428
        Date Modified: October 25th, 2016
        Version	History:Part-1.Project Concept & Setup, 
                        Part-2.Main	Game Tracking Page, DB & Partial Function
                        Part-3.Full Functionality & Site Security
        File Description: Aspx file. Signin.aspx, Allows new user to register or allows existing user to sign in. 
    --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container jumbotron">
        
<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-sign-in" aria-hidden="true"></i> Sign in</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_signin_email" runat="server" CssClass="form-control input-lg" placeholder="Email address" ValidationGroup="signin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_signin_email" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter email" ValidationGroup="signin" ControlToValidate="TextBox_signin_email" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_signin_email" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Invalid email" ValidationGroup="signin" ControlToValidate="TextBox_signin_email" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
		    </div>
        </div>
		
        <div class="row">
		    <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_signin_password" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="signin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_signin_password" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter password" ValidationGroup="signin" ControlToValidate="TextBox_signin_password" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
		    </div>
        </div>
        <br />
        <div class="row">
		    <div class="col-md-12 text-center">
                <asp:Label ID="label_signin_message" runat="server" CssClass="alert-danger"></asp:Label>
		    </div>
        </div>
		<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_signin" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Sign in" ValidationGroup="signin" OnClick="Button_signin_Click"/>
			</div>
		</div>
	</div>

    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-pencil" aria-hidden="true"></i> Register</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_first_name" runat="server" CssClass="form-control input-lg" placeholder="First name" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_first_name" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter first name" ValidationGroup="register" ControlToValidate="TextBox_register_first_name" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_last_name" runat="server" CssClass="form-control input-lg" placeholder="Last name" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_last_name" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter last name" ValidationGroup="register" ControlToValidate="TextBox_register_last_name" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_register_email" runat="server" CssClass="form-control input-lg" placeholder="Email address" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter email" ValidationGroup="register" ControlToValidate="TextBox_register_email" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_email" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Invalid email" ValidationGroup="register" ControlToValidate="TextBox_register_email" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_password" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please enter password" ValidationGroup="register" ControlToValidate="TextBox_register_password" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password_confirm" runat="server" CssClass="form-control input-lg" placeholder="Confirm password" TextMode="password" ValidationGroup="register"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_password_confirm" runat="server" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Please confirm password" ValidationGroup="register" ControlToValidate="TextBox_register_password_confirm" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="customvalidator_signup_confirm_password" runat="server" EnableClientScript="true" ErrorMessage="<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Confirm password does not match" ClientValidationFunction="checkPassword" ValidationGroup="register" ControlToValidate="TextBox_register_password_confirm" CssClass="alert-danger" Display="dynamic" SetFocusOnError="true"></asp:CustomValidator>
			</div>
        </div>
        <br />
        <div class="row">
		    <div class="form-group col-md-12 text-center">
                <asp:Label ID="label_register_message" runat="server" CssClass="alert-danger"></asp:Label>
		    </div>
        </div>
			<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_register" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Register" ValidationGroup="register" OnClick="Button_register_Click"  />
			</div>
		</div>
	</div>
</div>

</div>
    <%--Tells the user if the password is the same as confirm password or not (Js)--%>
     <script>
        function checkPassword(source, args) {
            var password = document.getElementById('<%=TextBox_register_password.ClientID%>').value;
            var confirm_password = document.getElementById('<%=TextBox_register_password_confirm.ClientID%>').value;
            if (password != confirm_password) {
            args.IsValid = false;
            return;
            }
            else {
            args.IsValid = true;
            return;
            }
        }

    </script>
</asp:Content>
