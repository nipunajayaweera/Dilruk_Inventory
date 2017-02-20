<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Create_Product.aspx.cs" Inherits="DilrukInventory.Create_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Create Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function myFunction() {
            var x = document.getElementById('<%=DropDownList1.ClientID %>').value;
            if (x != "Select a Item") {
                document.getElementById("Content_DropDownList2").disabled = false;
                //PageMethods.LoadTypeDropDown(x, OnSuccess);
                
                $.ajax({
                    type: "POST",
                    url: "Create_Product.aspx/LoadTypeDropDown",
                    data: '{id: ' + x + ' }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        $("#Content_DropDownList2").empty().append($("<option></option>").val("0").html("Please select"));
                        var obj = JSON.parse(data.d);
                        $.each(obj, function () {
                            $("#Content_DropDownList2").append($("<option></option>").val(this['ID']).html(this['Item']));
                        });
                    },
                    error: function () {
                        alert("Failed!");
                    }
                });


            } else {
                document.getElementById('<%=DropDownList2.ClientID %>').disabled = true;
            }

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-shopping-cart home-icon"></i>
			<a href="#">Create Product</a>
		</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Create Product
	</h1>
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
<%--    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>--%>
    <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods = "true"></asp:ScriptManager>
		<div class="col-xs-12">
            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Item </label>
		        <div class="col-sm-9">
			        <asp:DropDownList ID="DropDownList1" onchange="myFunction()" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="DropDownList1" InitialValue="Select a Item" ID="RequiredFieldValidator3" ForeColor="#B50128" runat="server" ErrorMessage="Supplier Field Can't Empty."></asp:RequiredFieldValidator>
		        </div>
	        </div>
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
	                <div class="form-group">
		                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Type </label>
		                <div class="col-sm-9">
			                <asp:DropDownList ID="DropDownList2"  runat="server" class="col-xs-10 col-sm-5" Enabled="false"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                            <asp:RequiredFieldValidator controltovalidate="DropDownList2" InitialValue="Please select" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
		                </div>
	                </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <%--<div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Supplier </label>
		        <div class="col-sm-9">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="col-xs-10 col-sm-5"></asp:DropDownList>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="DropDownList1" InitialValue="Select" ID="RequiredFieldValidator3" ForeColor="#B50128" runat="server" ErrorMessage="Supplier Field Can't Empty."></asp:RequiredFieldValidator>

		        </div>
	        </div>--%>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Quentity </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="PricePerKg" runat="server" placeholder="Quentity" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator controltovalidate="PricePerKg" ID="RequiredFieldValidator4" runat="server" ForeColor="#B50128" ErrorMessage="This Field Can't Empty."></asp:RequiredFieldValidator><br />&nbsp; &nbsp; &nbsp;
                    <asp:CompareValidator ID="CompareValidator2" ControlToValidate="PricePerKg" runat="server" Type="Double" ForeColor="#B50128" ErrorMessage="Numbers Only"></asp:CompareValidator>


		        </div>
	        </div>

            <div class="form-group">
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Number of items </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="Quantity" runat="server" placeholder="Number of items" class="col-xs-10 col-sm-5"></asp:TextBox>&nbsp; &nbsp; &nbsp;
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
    

</asp:Content>
