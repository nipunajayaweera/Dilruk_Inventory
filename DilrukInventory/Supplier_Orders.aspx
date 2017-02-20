<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Supplier_Orders.aspx.cs" Inherits="DilrukInventory.Supplier_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Supplier Orders
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-users home-icon"></i>
			<a href="#">Supplier</a>
		</li>
        <li class="active">Supplier Orders</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Supplier Orders
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Supplier
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">

                <div class="col-xs-9">   
                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> First Name </label>

		        <div class="col-sm-9">
			        <asp:TextBox type="text" ID="fname" runat="server" placeholder="First Name" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
                </div>

                <div class="col-xs-3">   
                    <asp:Button ID="AddOrder" class="btn btn-info" runat="server" Text="Add Supplier Order" OnClick="AddOrder_Click" />
                </div>
		        
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
                    <asp:Button ID="Submit" runat="server" class="btn btn-info" Text="Search" OnClick="Search_Click" />

					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset</button>
				</div>
			</div>

        </div>
    </div>
</asp:Content>
