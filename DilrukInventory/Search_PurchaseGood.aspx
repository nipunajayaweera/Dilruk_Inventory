<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Search_PurchaseGood.aspx.cs" Inherits="DilrukInventory.Search_PurchaseGood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-shopping-cart home-icon"></i>
			<a href="#">Purchases</a>
		</li>
        <li class="active">Search Purchase</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Search Purchase Goods
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Purchase Good Details
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
