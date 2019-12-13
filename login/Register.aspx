<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="login.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    .box {
  width: 758px;
  padding: 25px;
  margin: 125px;
  height: 382px;
    }
  body {
        background-image:url(Images/regi.jpg);
        background-size:cover;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FFFFFF">
    
    </div>
        <div class="box">
        <p>
            <asp:Label ID="UserName" runat="server" style="margin-left: 180px" Text="User Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="41px" style="margin-left: 58px" Width="214px" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="Username is Required!" ControlToValidate="TextBox1">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Password" runat="server" style="margin-left: 180px" Text="Password : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="39px" style="margin-left: 68px" Width="215px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is Required!" ControlToValidate="TextBox2">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Confirm_Password" runat="server" style="margin-left: 180px" Text="Confirm Password : "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="41px" style="margin-left: 9px" Width="214px" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCon_Password" runat="server" ErrorMessage="Please,Confirm Your Password!" ControlToValidate="TextBox3">
            </asp:RequiredFieldValidator>
        </p>
            <p style="margin-left: 320px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password and Confirm Password does not match!!"></asp:CompareValidator>
        </p>
        <p>
            <asp:Label ID="Email" runat="server" style="margin-left: 180px" Text="Email : "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="42px" style="margin-left: 95px" Width="214px" placeholder="Enter Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is Required!" ControlToValidate="TextBox4">
            </asp:RequiredFieldValidator>
        </p>
            <p style="margin-left: 320px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Enail Format!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="register" runat="server" Height="36px" OnClick="register_Click" style="margin-left: 296px; margin-top: 19px" Text="Register" Width="119px" />
        </p>
            <p>
            <asp:Label ID="lblid" runat="server" style="margin-left: 130px" Text=" "></asp:Label>
        </p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
