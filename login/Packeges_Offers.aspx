<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packeges_Offers.aspx.cs" Inherits="login.Packeges___Offers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style>
body {
  background-color: powderblue;
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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="anm"><h1 style="margin-left: 500px"> Welcome to Hotel Radisson </h1></div>
    <h1 style="color:red">Offers and Packages </h1>
    <br>
    <h1 style="color:orange">Our seminar packages </h1>
    <p>        
        The Hotel Radisson can propose different packages which all include:<br>
        Rental of your meeting rooms<br>
        Equipment included : videoprojector, paperboard<br>
        Free high-speed Wifi access (200 mega)
    </p>
    <br>
    <h2>We are happy to offer three packages:</h2>
    <p>
        Half-day meeting package includes 1 coffee-break, 1 lunch break (3 courses or Smart Food)<br>
        Full-day meeting package includes 2 coffee-breaks, 1 lunch break (3 courses or Smart Food)<br>
        Meeting by the hour (services may vary depending on your needs)
    </p>
    <br>
    <h2 style="color:peru">Our special offers</h2>
    <p>
        The Hotel Radisson regularly updates its offers in order to offer you the best deals and the most adjusted to your needs.<br>
        These packages may vary according to the season. Therefore, do not hesitate to consult this page frequently.<br> 
        The special deals which are currently available ate the following:
    </p>
    <br>
    <h3>SEMINAR AUTUMN 2017 :</h3>
    <p>
        from 129 Euros<br>
        1 night in standard room<br>
        Breakfast<br>
        Full-day meeting package (including room rental, 2 coffee-breaks and 1 lunch-break)<br>
        Valid from September 1st December 31st 2017
    </p>
    <br>
    <h3>RESIDENTIAL OFFER « Soirée Etape »:</h3>
    <p>
        from 89 Euros<br>
        Guest-room<br>
        Dinner<br>
        Breakfast
    </p>
    <br>
    <h2 style="color:peru">Our special packages</h2><br>
    <h3>« SPORT PRO » OFFER</h3>
    <p>
        For clubs, federations or associations, the Hotel Radisson proposes special conditions including in terms of catering.<br>
        The hotel has the advantage to be located near sports installations and close to the Allianz Riviera (5 minutes).
    </p>

    </form>
</body>
</html>
