<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_details.aspx.cs" Inherits="login.User_details" %>

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
          margin-left: 400px;
         }
        body {
          background-color: powderblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="box">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
    </div>
    </form>
</body>
</html>
