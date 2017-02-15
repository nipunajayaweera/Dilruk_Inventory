<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="DilrukInventory.test1" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UITestConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/jquery-1.12.4.min.js"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="Content/calendar-blue.css" rel="stylesheet" />
    <script src="scripts/js-ballon.js"></script>
    <script src="assets/dist/sweetalert.min.js"></script>
    <link href="assets/dist/sweetalert.css" rel="stylesheet" />
    <script>
        $(document).ready(function(){
            $("#btnSave").click(function(){
                swal({
                    title: "Auto close alert!",
                    text: "I will close in 2 seconds.",
                    timer: 2000,
                    showConfirmButton: false
                });
            });
        });
        </script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#TextBox1").dynDateTime({
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
</head>
<body>
    <form id="form1" runat="server">
<asp:TextBox ID="TextBox1" runat="server" ReadOnly = "true"></asp:TextBox>
<img id="qw" src="calender.png" />
<asp:Button ID="btnSave" runat="server" Text="Save"  />
        
    </form>
</body>
</html>