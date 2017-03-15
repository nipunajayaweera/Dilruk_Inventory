<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Supplier_Orders.aspx.cs" Inherits="DilrukInventory.Supplier_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Supplier Orders
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $(document).on("click", ".Search-table", function (e) {
                
                //var id = this.id;
                $.ajax({
                    type: "POST",
                    url: "Search_Buyer.aspx/Edit",
                    data: '{id: ' + id + ' }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {}
                })});
            });
        function Search() {
            $("#loading").css("display", "block");
            var F = document.getElementById('<%=fname.ClientID %>').value;
                $.ajax({
                    type: "POST",
                    url: "Supplier_Orders.aspx/Search",
                    data: JSON.stringify({F: F }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        document.getElementById("tableDiv").innerHTML = null;
                        var content = "<table class='table table-hover'>" +
                                        "<thead>" +
                                          "<tr>" +
                                            "<th>Firstname</th>" +
                                            "<th>Lastname</th>" +
                                            "<th>Country</th>" +
                                            "<th>Telephone</th>" +
                                            "<th>E-Mail</th>" +
                                            "<th>Address</th>" +
                                            //"<th>Edit</th>" +
                                          "</tr>" +
                                        "</thead>" +
                                        "<tbody>"
                        var obj = JSON.parse(data.d);
                        $.each(obj, function () {
                            content += "<tr>" +
                                "<td>" + this['FirstName'] + "</td>" +
                                "<td>" + this['LastName'] + "</td>" +
                                "<td>" + this['Country'] + "</td>" +
                                "<td>" + this['Telephone'] + "</td>" +
                                "<td>" + this['Email'] + "</td>" +
                                "<td>" + this['Address'] + "</td>" +
                                //"<td class='Search-table' id='" + this['ID'] + "'><a href='Update_Buyer.aspx?id="+this['ID']+"'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a></td>"
                              "</tr>"
                        });

                        content += "</tbody>"+
                                "</table>"
                        $("#loading").css("display", "none");
                        $('#tableDiv').append(content);

                    },
                    error: function () {
                        $("#loading").css("display", "none");
                        $("#loading").css("display", "none");
                    }
                });

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
                                        <button type="button" class="btn btn-info" onclick="Search()">Search</button>


					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset</button>
				</div>
			</div>

        </div>
    </div>

    <div class="row">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-sm-offset-5 col-md-1">
                    <div id="loading" style="display:none;"><i class="fa fa-circle-o-notch fa-spin" style="font-size:55px;color: #2b7dbc;"></i></div>
                </div>
                <div class="col-xs-12" id="tableDiv">
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
