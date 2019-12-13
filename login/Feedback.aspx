<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="login.Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

<style>
body {
background-color: lightblue;
}
div.cls {
width: 100%;
height: 60px;
background-color: rgb(22, 219, 38);
text-align: center;
}
p {
    margin-left: 10px;
    margin-right: 10px;
    color: green;
}
div.anm {
  width: 100%;
  height: 60px;
  background-color: rgb(0, 60, 255);
  position: relative;
  -webkit-animation: mymove 10s infinite; 
  animation: mymove 10s infinite;
}
@-webkit-keyframes mymove {
  from {left: 100%;}
  to {left: 0px;}
}
@keyframes mymove {
  from {left: 100%;}
  to {left: 0px;}
}
h3 {
  text-align: center; 
  color: red;
  font-size: 35px;
  text-decoration: underline;
}
h4 {
    text-align:center;
    color: orange;
    font-size: 25px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
<div class="anm"><h1 style="margin-left: 500px"> Welcome to Hotel Radisson </h1></div>
<div class="cls"> <h1>Give Your Feedback</h1> </div>
  
<br/><br/>
        <h4>
            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="170px" style="margin-left: 220px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Quality of Rooms : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="130px" margin-left="200px" style="margin-left: 59px">
                <asp:ListItem Value="1">Great</asp:ListItem>
                <asp:ListItem Value="2">Excellent</asp:ListItem>
                <asp:ListItem Value="3">Good</asp:ListItem>
                <asp:ListItem Value="4">Bad</asp:ListItem>
                <asp:ListItem Value="5">Very Bad</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <h4>
            <asp:Label ID="Label5" runat="server" Text="Quality of Foods : "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="130px" margin-left="200px" style="margin-left: 78px">
                <asp:ListItem Value="1">Great</asp:ListItem>
                <asp:ListItem Value="2">Excellent</asp:ListItem>
                <asp:ListItem Value="3">Good</asp:ListItem>
                <asp:ListItem Value="4">Bad</asp:ListItem>
                <asp:ListItem Value="5">Very Bad</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <h4>
            <asp:Label ID="Label6" runat="server" Text="Service Quality : "></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="130px" margin-left="200px" style="margin-left: 94px">
                <asp:ListItem Value="1">Great</asp:ListItem>
                <asp:ListItem Value="2">Excellent</asp:ListItem>
                <asp:ListItem Value="3">Good</asp:ListItem>
                <asp:ListItem Value="4">Bad</asp:ListItem>
                <asp:ListItem Value="5">Very Bad</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <h4>
            <asp:Label ID="Label2" runat="server" Height="25px" style="margin-left: 80px" Width="80px" Text="Rating "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" style="margin-left: 150px" Width="161px" PlaceHolder="Out Of 10"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label3" runat="server" Height="25px" style="margin-left: 80px" Width="80px" Text="Review "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="111px" style="margin-left: 90px" Width="354px" PlaceHolder="Please, comment within 10 words"></asp:TextBox>
        </h4>
        <br />
        <asp:Button ID="Button1" runat="server" Height="36px" style="margin-left: 540px" Text="Submit" Width="141px" OnClick="Button1_Click" />
        <br />
        
        <p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 265px">
            </asp:GridView>
        </p>
    

    </form>
</body>

</html>

