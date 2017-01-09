<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_PurchaseGood.aspx.cs" Inherits="DilrukInventory.Add_PurchaseGood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add Purchase Goods
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-shopping-cart home-icon"></i>
			<a href="#">Purchases</a>
		</li>
        <li class="active">Add Purchase</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Add Purchase Good
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Purchase Good
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Item </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="item" runat="server" placeholder="Item" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Date </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="date" runat="server" placeholder="Date" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Supplier </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="supplier" runat="server" placeholder="Supplier" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Price Per Kg </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="PricePerKg" runat="server" placeholder="Price Per Kg" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Quantity </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="Quantity" runat="server" placeholder="Quantity" class="col-xs-10 col-sm-5"></asp:TextBox>
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
