<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DilrukInventory.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/login%20style.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
</head>
<body>
    <div>
        <div class="container">
            <div class="wrapper">
                <form method="post" name="Login_Form" class="form-signin" runat="server">
                    <h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
                    <hr class="colorgraph"><br>
                    <asp:TextBox ID="txtusername" runat="server" class="form-control" name="Username" placeholder="Username" required="asd" autofocus=""></asp:TextBox>
                    <asp:TextBox ID="txtpassword" runat="server" type="password" class="form-control" name="Password" placeholder="Password" required=""></asp:TextBox>
                    
                    <asp:Button class="btn btn-lg btn-primary btn-block" ID="Button1" runat="server" Text="Login" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </form>
            </div>
        </div>
    
    </div>
</body>
</html>
