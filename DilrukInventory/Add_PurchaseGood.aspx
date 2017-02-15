﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_PurchaseGood.aspx.cs" Inherits="DilrukInventory.Add_PurchaseGood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add Purchase Goods
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
    <script src="scripts/jquery.dynDateTime.min.js"></script>

    <script src="scripts/calendar-en.min.js"></script>
    <link href="Content/calendar-blue.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Content_TextBox1").dynDateTime({
                showsTime: true,
                ifFormat: "%Y/%m/%d %H:%M",
                daFormat: "%l;%M %p, %e %m,  %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
    </script>

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
			        <asp:TextBox type="text" ID="item" runat="server" placeholder="Item" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="item" ID="RequiredFieldValidator1" runat="server" ForeColor="#B50128" ErrorMessage="Item Field Can't Empty."></asp:RequiredFieldValidator>
		        </div>
	        </div>

	        <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Date </label>

		        <div class="col-sm-9">
                    <div>

                        
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly = "true"></asp:TextBox>
                        <img src="calender.png" />
                        <%--<asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>--%>
                    </div>
			        <%--<asp:TextBox type="text" ID="date" runat="server" placeholder="Date" class="col-xs-10 col-sm-5" Enabled="False"></asp:TextBox>--%>
                    <%--<asp:Button ID="Button1" runat="server" Text="Date" onclick="LinkButton1_Click"/>&nbsp; &nbsp; &nbsp;--%>
                    <asp:RequiredFieldValidator controltovalidate="item" ID="RequiredFieldValidator2" runat="server" ForeColor="#B50128" ErrorMessage="Date Field Can't Empty."></asp:RequiredFieldValidator>

		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Supplier </label>

		        <div class="col-sm-9">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="DropDownList1" InitialValue="Select" ID="RequiredFieldValidator3" ForeColor="#B50128" runat="server" ErrorMessage="Supplier Field Can't Empty."></asp:RequiredFieldValidator>

		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Price Per Kg </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="PricePerKg" runat="server" placeholder="Price Per Kg" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="PricePerKg" ID="RequiredFieldValidator4" runat="server" ForeColor="#B50128" ErrorMessage="This Field Can't Empty."></asp:RequiredFieldValidator><br />&nbsp; &nbsp; &nbsp;
                    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="PricePerKg" runat="server" Type="Double" ForeColor="#B50128" ErrorMessage="Numbers Only"></asp:CompareValidator>


		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Quantity </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="Quantity" runat="server" placeholder="Quantity" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Quantity" runat="server" ForeColor="#B50128" ErrorMessage="This Field Can't Empty."></asp:RequiredFieldValidator><br />&nbsp; &nbsp; &nbsp;
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="Quantity" runat="server" Type="Double" ForeColor="#B50128" ErrorMessage="Numbers Only"></asp:CompareValidator>
		        </div>
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
                    <asp:Button ID="Submit" runat="server" class="btn btn-info" Text="Submit" OnClick="Submit_Click" />
					

					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset</button>
				</div>
			</div>

        </div>
    </div>
</asp:Content>
