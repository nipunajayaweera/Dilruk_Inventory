<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Add_PurchaseGood.aspx.cs" Inherits="DilrukInventory.Add_PurchaseGood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Add Purchase Goods
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/jquery-ui-1.12.1.js"></script>
    <script>
      $( function() {
          $("#Content_datepicker").datepicker();
      } );
  </script>
    <script>
        $(document).ready(function () {
            $("#Content_DropDownList3").empty().append($("<option></option>").val("0").html("Please select Item"));
        });
        function LoadItemtype() {
            var x = document.getElementById('<%=DropDownList2.ClientID %>').value;
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
    <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods = "true"></asp:ScriptManager>
    <div class="row">
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Item </label>

		        <div class="col-sm-9">
                    <asp:DropDownList ID="DropDownList2" onchange="LoadItemtype()" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>
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
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Date </label>

		        <div class="col-sm-9">
                    <div>

                        
                        <asp:TextBox id="datepicker" runat="server" ReadOnly = "true"></asp:TextBox>
                        <%--<asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>--%>
                    </div>
			        <%--<asp:TextBox type="text" ID="date" runat="server" placeholder="Date" class="col-xs-10 col-sm-5" Enabled="False"></asp:TextBox>--%>
                    <%--<asp:Button ID="Button1" runat="server" Text="Date" onclick="LinkButton1_Click"/>&nbsp; &nbsp; &nbsp;--%>
                    <asp:RequiredFieldValidator controltovalidate="datepicker" ID="RequiredFieldValidator2" runat="server" ForeColor="#B50128" ErrorMessage="Date Field Can't Empty."></asp:RequiredFieldValidator>

		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Supplier </label>

		        <div class="col-sm-9">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="DropDownList1" ID="RequiredFieldValidator3" ForeColor="#B50128" runat="server" ErrorMessage="Supplier Field Can't Empty."></asp:RequiredFieldValidator>

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
                    <%--<asp:Button ID="Submit" runat="server" class="btn btn-info" Text="Submit" OnClick="Submit_Click" />--%>
					

					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset</button>
				</div>
			</div>

        </div>
    </div>
</asp:Content>
