<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
  .box {
  width: 602px;
  padding: 25px;
  margin: 125px;
  height: 197px;
    }

    body {
        background-image:url(Images/regi.jpg);
        background-size:cover;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="box">
        <asp:Label ID="username" runat="server" style="margin-left: 140px" Text="User Name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="39px" style="margin-left: 42px" Width="186px" placeholder="Enter Username"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username is Required!" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
        <p>
            <asp:Label ID="password" runat="server" style="margin-left: 148px" Text="Password : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="39px" style="margin-left: 43px" Width="192px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is Required!" ControlToValidate="TextBox2">
            </asp:RequiredFieldValidator>
        </p>
        <asp:CheckBox ID="CheckBox1" runat="server" style="margin-left:250px" Text="Remember me"/>
        <br />
        <asp:Button ID="loginid0" runat="server" Height="39px" OnClick="loginid_Click" style="margin-left: 244px; margin-top: 16px;" Text="Login" Width="106px" />
        </div>
    </form>
</body>
</html>
