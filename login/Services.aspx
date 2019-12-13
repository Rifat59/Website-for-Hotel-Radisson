<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="login.Services" %>

<!DOCTYPE html>
<html>

<head> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
div.cls {
    width: 100%;
    height: 60px;
    background-color: rgb(22, 219, 38);
    text-align: center;
}
div.cls2 {
    width: 100%;
    height: 60px;
    background-color: palevioletred;
    text-align: center;
}
h3 {
  text-align: center; 
  color: red;
  font-size: 35px;
  text-decoration: underline;
}
h4 {
  text-align: center; 
  color: red;
  font-size: 30px;
}
p {
  margin-left: 10px;
  margin-right: 10px;
}
.column {
  float: left;
  padding: 10px;
}
.column.side {
  width: 33.33%;
}
.column.side_food {
  width: 20%;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
@media screen and (max-width: 800px) {
  .column.side, .column.middle {
    width: 100%;
  }
* {
  box-sizing: border-box;
}
.zoom {
  transition: transform .5s;
  margin: 0 auto;
}
.zoom:hover {
  -ms-transform: scale(1.07);
  -webkit-transform: scale(1.07);
  transform: scale(1.07); 
}
}
</style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="anm"><h1 style="margin-left: 500px"> Welcome to Hotel Radisson </h1></div>
    <div class="cls"> <h1>Services of Our Hotel</h1> </div>
    <div class="cls2"> <h1>Rooms</h1> </div>
    <div class="row">
        <div class ="zoom">
        <div class="column side">
          <h4>Single Room</h4>
          <img src="Images/room_single.jpg" style="width:100%;height: 100%">
          <p style="text-align:center;">single bed</p>
          <p style="text-align:center;">15m<sup>2</sup></p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side">
          <h4>Double Room</h4>
          <img src="Images/room_double.jpg" style="width:100%;height: 100%">
          <p style="text-align:center;">double bed</p>
          <p style="text-align:center;">25m<sup>2</sup></p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side">
          <h4>Deluxe Room</h4>
          <img src="Images/room_deluxe.jpg" style="width:100%;height: 100%">
          <p style="text-align:center;">deluxe bed</p>
          <p style="text-align:center;">40m<sup>2</sup></p>
        </div>
        </div>
    </div>
    <div class="cls2"> <h1>Foods</h1> </div>
    <div class="row">
        <div class ="zoom">
        <div class="column side_food">
          <img src="Images/burger1.jpg" style="width:240px;height: 240px">
          <p style="text-align:center;">Chicken Cheese Burger</p>
          <p style="text-align:center;">Taste : 10/10</p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side_food">
          <img src="Images/pizza1.jpg" style="width:240px;height: 240px">
          <p style="text-align:center;">Beef Pizza</p>
          <p style="text-align:center;">Taste : 10/10</p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side_food">
          <img src="Images/coffee.jpg" style="width:240px;height: 240px">
          <p style="text-align:center;">Coffee</p>
          <p style="text-align:center;">Taste : 9/10</p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side_food">
            <img src="Images/pasta.jpg" style="width:240px;height: 240px">
            <p style="text-align:center;">Pasta</p>
            <p style="text-align:center;">Taste : 9/10</p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side_food">
          <img src="Images/pizza2.jpg" style="width:240px;height: 240px">
          <p style="text-align:center;"> Chicken Pizza</p>
          <p style="text-align:center;">Taste : 8/10</p>
      </div>
      </div>
    </div>
    <div class="row">
      <div class ="zoom">
      <div class="column side_food">
        <img src="Images/hotdog.jpg" style="width:240px;height: 240px">
        <p style="text-align:center;">Hotdog</p>
        <p style="text-align:center;">Taste : 9/10</p>
      </div>
      </div>
      <div class ="zoom">
      <div class="column side_food">
        <img src="Images/drinks.jpg" style="width:240px;height: 240px">
        <p style="text-align:center;">Easy Drinks</p>
        <p style="text-align:center;">Taste : 10/10</p>
      </div>
      </div>
      <div class ="zoom">
      <div class="column side_food">
        <img src="Images/burger2.jpg" style="width:240px;height: 240px">
        <p style="text-align:center;">Spicy Burger</p>
        <p style="text-align:center;">Taste : 9/10</p>
      </div>
      </div>
      <div class ="zoom">
      <div class="column side_food">
          <img src="Images/sandwich.jpg" style="width:240px;height: 240px">
          <p style="text-align:center;">Sandwich</p>
          <p style="text-align:center;">Taste : 10/10</p>
      </div>
      </div>
      <div class ="zoom">
      <div class="column side_food">
        <img src="Images/rice.jpg" style="width:240px;height: 240px">
        <p style="text-align:center;">Fat Rice</p>
        <p style="text-align:center;">Taste : 9/10</p>
      </div>
      </div>
    </div>

    </form>

</body>

</html>
