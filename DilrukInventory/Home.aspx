<%@ Page Title="" Language="C#" MasterPageFile="~/Mater.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DilrukInventory.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="breadcrumb" runat="server">
    <ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-home home-icon"></i>
			<a href="#">Home</a>
		</li>
	</ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Form_Header" runat="server">
    <h1>
		Home
        <small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			Over View Business
		</small>
	</h1>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
