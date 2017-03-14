<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Search_Supplier.aspx.cs" Inherits="DilrukInventory.Search_Supplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Search Supplier
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-users home-icon"></i>
			<a href="#">Suppliers</a>
		</li>
        <li class="active">Search Supplier</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Search Supplier
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Supplier Details
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
		<div class="col-xs-12">
            <div>
                <table class="table-hover table-striped" id="mytable">
                    <thead>
                        <tr>
                            <td>FirstName</td>
                            <td>LastName</td>
                            <td>Address</td>
                            <td>Telephone</td>
                            <td>Fax</td>
                            <td>Email</td>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    <link href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>    
    <script>
        $(document).ready(function () {
            $('#mytable').DataTable({
                "ajax": {
                    "url": "Search_Supplier.aspx/LoadTable",
                    "type": "GET",
                    "datatype": "json",
                    "data" : "data"
                },
                "columns": [
                    { "data": "FirstName", "autoWidth": true },
                    { "data": "LastName", "autoWidth": true },
                    { "data": "Address", "autoWidth": true },
                    { "data": "Telephone", "autoWidth": true },
                    { "data": "Fax", "autoWidth": true },
                    { "data": "Email", "autoWidth": true }
                ]
            });
        });

        //$(document).ready(function () {
        //    $.ajax({
        //        type: "GET",
        //        dataType: "json",
        //        url: "Search_Supplier.aspx/LoadTable",
        //        success: function (data) {
        //            var datatableVariable = $('#mytable').DataTable({
        //                data: data,
        //                columns: [
        //                    { 'data': 'FirstName' },
        //                    { 'data': 'LastName' },
        //                    { 'data': 'Address' },
        //                    { 'data': 'Telephone' },
        //                    { 'data': 'Fax' },
        //                    { 'data': 'Email' }
        //                ]
        //            });
        //        }
        //    });

        //});
    </script>

</asp:Content>
