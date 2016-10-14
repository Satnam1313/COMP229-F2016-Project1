<%@ Page Title="" Language="C#" MasterPageFile="~/GameTracker.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="COMP229_F2016_Project1.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-sign-in" aria-hidden="true"></i> Sign in</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_signin_email" runat="server" CssClass="form-control input-lg" placeholder="Email address" ValidationGroup="signin"></asp:TextBox>
                <asp:Label ID="Label_signin_email" runat="server" CssClass="text-danger"></asp:Label>
		    </div>
        </div>
		
        <div class="row">
		    <div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_signin_password" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="signin"></asp:TextBox>
		    </div>
        </div>

		<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_signin" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Sign in" ValidationGroup="signin" OnClientClick="return validate_signin();"/>
			</div>
		</div>
	</div>

    <div class="col-xs-12 col-sm-6 col-md-6">
		<h2><i class="fa fa-pencil" aria-hidden="true"></i> Register</h2>
		<hr />
        <div class="row">
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_first_name" runat="server" CssClass="form-control input-lg" placeholder="First name" ValidationGroup="register"></asp:TextBox>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_last_name" runat="server" CssClass="form-control input-lg" placeholder="Last name" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-12">
                <asp:TextBox ID="TextBox_register_email" runat="server" CssClass="form-control input-lg" placeholder="Email address" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
        <div class="row">
			<div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="password" ValidationGroup="register"></asp:TextBox>
			</div>
            <div class="form-group col-md-6">
                <asp:TextBox ID="TextBox_register_password_confirm" runat="server" CssClass="form-control input-lg" placeholder="Confirm password" TextMode="password" ValidationGroup="register"></asp:TextBox>
			</div>
        </div>
			<hr />
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
                <asp:Button ID="Button_register" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Register" ValidationGroup="register" />
			</div>
		</div>
	</div>
</div>

</div>
     <script>
        function validate_signin() {
            $('#<%= Label_signin_email.ClientID %>').html('');
            if ($('#<%= TextBox_signin_email.ClientID %>').val().length == 0) {
                $('#<%= Label_signin_email.ClientID %>').html('Please enter email address');
                return false;
            }
            <%--var regex_email = '^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$';
            var n = $('#<%= TextBox_signin_email.ClientID %>').val().match(regex_email);
            if (!n) {
                $('#<%= Label_signin_email.ClientID %>').html('Invalid email address');
                return false;
            }--%>
        }
    </script>
</asp:Content>
