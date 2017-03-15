<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_Supplier_Order.aspx.cs" Inherits="DilrukInventory.Add_Supplier_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add Supplier Order
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("#Content_DropDownList3").empty().append($("<option></option>").val("0").html("Please select Item"));
        });
        function LoadItemtype() {
            var x = document.getElementById('<%=ItemDD.ClientID %>').value;
            if (x != "Select a Item") {
                document.getElementById("Content_DropDownList3").disabled = false;
                //PageMethods.LoadTypeDropDown(x, OnSuccess);

                $.ajax({
                    type: "POST",
                    url: "Add_PurchaseGood.aspx/LoadTypeDropDown",
                    data: '{id: ' + x + ' }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        $("#Content_DropDownList3").empty().append($("<option></option>").val("0").html("Please select"));
                        var obj = JSON.parse(data.d);
                        $.each(obj, function () {
                            $("#Content_DropDownList3").append($("<option></option>").val(this['ID']).html(this['Item']));
                        });
                    },
                    error: function () {
                        alert("Failed!");
                    }
                });


            } else {
                $("#Content_DropDownList3").empty().append($("<option></option>").val("0").html("Please select"));
                document.getElementById('<%=DropDownList3.ClientID %>').disabled = true;
            }
        }
    </script>
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
			Add Supplier Order
		</small>
	</h1>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods = "true"></asp:ScriptManager>
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Supplier Name </label>

		        <div class="col-sm-9">
                    <asp:DropDownList ID="SupplierNameDD" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>
		        </div>
	        </div>
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Item </label>

		        <div class="col-sm-9">
                    <asp:DropDownList ID="ItemDD" onchange="LoadItemtype()" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>
		        </div>
	        </div>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
	                <div class="form-group">
		                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Type </label>
		                <div class="col-sm-9">
			                <asp:DropDownList ID="DropDownList3"  runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                            <asp:RequiredFieldValidator controltovalidate="DropDownList3" InitialValue="Please select" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
		                </div>
	                </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Price Per Kg </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="PricePerKg" runat="server" placeholder="Price Per Kg" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="PricePerKg" ID="RequiredFieldValidator4" runat="server" ForeColor="#B50128" ErrorMessage="This Field Can't Empty."></asp:RequiredFieldValidator><br />&nbsp; &nbsp; &nbsp;
                    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="PricePerKg" runat="server" Type="Double" ForeColor="#B50128" ErrorMessage="Numbers Only"></asp:CompareValidator>


		        </div>
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
                    <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Submit" />

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
