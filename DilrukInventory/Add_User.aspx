<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_User.aspx.cs" Inherits="DilrukInventory.Add_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-user home-icon"></i>
			<a href="#">Add User</a>
		</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Add User
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			User register
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Username </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="Username" runat="server" placeholder="Username" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Password </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="Password" runat="server" placeholder="Password" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Type </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="Type" runat="server" placeholder="Type" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
					<button class="btn btn-info" type="button">
						<i class="ace-icon fa fa-check bigger-110"></i>
						Submit
					</button>

					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset
					</button>
				</div>
			</div>

        </div>
    </div>
</asp:Content>
