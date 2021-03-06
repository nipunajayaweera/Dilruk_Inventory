﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_Buyer.aspx.cs" Inherits="DilrukInventory.Add_Buyer1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add Buyer
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-users home-icon"></i>
			<a href="#">Buyers</a>
		</li>
        <li class="active">Add Buyer</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Add Buyer
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Buyer register
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> First Name </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="fname" runat="server" placeholder="First Name" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Last Name </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="lname" runat="server" placeholder="Last Name" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Address </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="address" runat="server" placeholder="Address" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="country" runat="server" placeholder="Country" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Telephone </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="telephone" runat="server" placeholder="Telephone" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Fax </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="fax" runat="server" placeholder="Fax" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> E-mail </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="email" runat="server" placeholder="E-mail" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Remarks </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="remarks" runat="server" placeholder="Remarks" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Attachment </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="attachment" runat="server" placeholder="Attachment" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
                    <asp:Button ID="BuyerSaveBtn" class="btn btn-info" runat="server" Text="Save" OnClick="BuyerSaveBtn_Click" />

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
