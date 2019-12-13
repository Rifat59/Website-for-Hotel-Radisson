<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="login.Reservation" %>

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
    margin-left: 330px;
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
        margin-left: 40px;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
<div class="anm"><h1 style="margin-left: 500px"> Welcome to Hotel Radisson </h1></div>
<div class="cls"> <h1>Room Reservation</h1> </div>
  
<br><br>
        <h4>
            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="149px" style="margin-left: 199px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="149px" style="margin-left: 200px"></asp:TextBox>
        </h4>
  
        <h4>
            <asp:Label ID="Label3" runat="server" Text="Mobile No : "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="149px" style="margin-left: 152px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Room Type : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="58px" Width="147px" margin-left="200px" style="margin-left: 139px">
                <asp:ListItem Value="1">Single Room</asp:ListItem>
                <asp:ListItem Value="2">Double Room</asp:ListItem>
                <asp:ListItem Value="3">Deluxe Room</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <h4>
            <asp:Label ID="Label5" runat="server" Text="Number of Rooms : "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="56px" Width="147px" margin-left="200px" style="margin-left: 70px">
                <asp:ListItem Value="1">1</asp:ListItem>
                <asp:ListItem Value="2">2</asp:ListItem>
                <asp:ListItem Value="3">3</asp:ListItem>
                <asp:ListItem Value="4">4</asp:ListItem>
                <asp:ListItem Value="5">5</asp:ListItem>
            </asp:DropDownList>
        </h4>
        <h4>Check In Date</h4>
        <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="173px" style="margin-left: 564px"></asp:TextBox>
        <asp:Button ID="checkinbuttonid" runat="server" Height="34px" OnClick="checkinbuttonid_Click" Text="Select Date" Width="124px" />
<br/><br/>
        <asp:Calendar ID="CheckInDateId" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Caption="Check In Date" CaptionAlign="Top" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="227px" OnSelectionChanged="CheckInDateId_SelectionChanged" ShowGridLines="True" Width="279px" style="margin-left: 572px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <h4>Check Out Date</h4>
        <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="173px" style="margin-left: 564px"></asp:TextBox>
        <asp:Button ID="checkoutbuttonid" runat="server" Height="34px" OnClick="checkoutbuttonid_Click" Text="Select Date" Width="124px" />
        <br />
        <asp:Calendar ID="CheckOutDateId" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Caption="Check Out Date" CaptionAlign="Top" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="227px" OnSelectionChanged="CheckOutDateId_SelectionChanged" ShowGridLines="True" Width="279px" style="margin-left: 579px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
    

        <p>
            <asp:Button ID="deletebuttonid" runat="server" Height="37px" style="margin-left: 100px; margin-top: 1px" Text="Delete Reservation" Width="134px" OnClick="deletebuttonid_Click" />
            <asp:Button ID="submitbuttonid" runat="server" Height="39px" OnClick="submitbuttonid_Click" style="margin-left: 50px" Text="Reserve" Width="139px" />
            <asp:Button ID="updatebuttonid" runat="server" Height="37px" style="margin-left: 50px; margin-top: 1px" Text="Update Reservation" Width="134px" OnClick="updatebuttonid_Click" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left: 365px">
            </asp:GridView>
        </p>
    

    </form>
</body>

</html>

