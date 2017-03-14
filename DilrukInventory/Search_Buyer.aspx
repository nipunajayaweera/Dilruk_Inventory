<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Search_Buyer.aspx.cs" Inherits="DilrukInventory.Search_Buyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Search Buyer
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $(document).on("click", ".Search-table", function (e) {
                var id = this.id;
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
            var F = document.getElementById('<%=fname.ClientID %>').value;
            var L = document.getElementById('<%=lname.ClientID %>').value;
            var C = document.getElementById('<%=country.ClientID %>').value;
                $.ajax({
                    type: "POST",
                    url: "Search_Buyer.aspx/Search",
                    data: JSON.stringify({F: F,L: L,C: C }),
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
                                            "<th>Edit</th>" +
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
                                "<td class='Search-table' id='" + this['ID'] + "'><a href='Update_Buyer.aspx?id="+this['ID']+"'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a></td>"
                              "</tr>"
                        });

                        content += "</tbody>"+
                                "</table>"

                        $('#tableDiv').append(content);

                    },
                    error: function () {
                        alert("Server Error");
                    }
                });

        }
        
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-users home-icon"></i>
			<a href="#">Buyers</a>
		</li>
        <li class="active">Search Buyer</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Search Buyer
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Buyer Details
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
		        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Country </label>

		        <div class="col-sm-9">
                    <asp:TextBox type="text" ID="country" runat="server" placeholder="Country" class="col-xs-10 col-sm-5"></asp:TextBox>
		        </div>
	        </div>

            <div class="clearfix form-actions">
				<div class="col-md-offset-4 col-md-8">
                    <%--<asp:Button ID="BuyerSaveBtn" class="btn btn-info" runat="server" Text="Search" onchange="Search()" />--%>
                    <%--<button class="btn btn-info" onclick="Search()">Search</button>--%>
                    <button type="button" class="btn btn-info" onclick="Search()">Search</button>
					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset">
						<i class="ace-icon fa fa-undo bigger-110"></i>
						Reset
					</button>
				</div>
			</div>
        </div>
    </div>
    <div class="row">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-xs-12" id="tableDiv">
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
