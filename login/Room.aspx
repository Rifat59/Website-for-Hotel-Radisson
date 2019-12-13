<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="login.Room" %>

<!DOCTYPE html>
<html>

<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {
background-color: lightblue;
}
div.cls {
width: 100%;
height: 60px;
background-color: rgb(255, 106, 0);
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
  color: black;
  font-size: 35px;
  text-decoration: underline;
}
.column {
  float: left;
  padding: 10px;
}
.column.side {
  width: 50%;
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
<div class="anm"><h1 style="margin-left: 500px"> Welcome to Hotel Radisson </h1></div>
<div class="cls"> <h1>Rooms</h1> </div>
<p>There are many kinds of rooms in our hotel. Such as single room, double room and deluxe room. These rooms are living room and 
    these rooms are reserved by customer for one day or few more days. There are also meeting room in our hotel. In meeting room
    many company or organization manages their important meeting. The meeting room is a very important place for bussinessman and
    many companies. All the rooms are decorated so well for the customers as their demand.
</p>  
<div class="row">
        <div class ="zoom">
        <div class="column side">
          <h3>Single Room</h3>
          <img src="Images/room_single.jpg" style="width:100%;height: 100%">
          <p style="text-align:center;">single bed</p>
          <p style="text-align:center;">15m<sup>2</sup></p>
          <p style="text-align:center;">Price : 1500 taka per day</p>
        </div>
        </div>
        <div class ="zoom">
        <div class="column side">
          <h3>Double Room</h3>
          <img src="Images/room_double.jpg" style="width:100%;height: 100%">
          <p style="text-align:center;">double bed</p>
          <p style="text-align:center;">25m<sup>2</sup></p>
          <p style="text-align:center;">Price : 2500 taka per day</p>
        </div>
        </div>
    </div>
    <h3>Deluxe Room</h3>
    <img src="Images/room_deluxe.jpg" style="width:100%;height: 60%">
    <p style="text-align:center;">deluxe bed</p>
    <p style="text-align:center;">40m<sup>2</sup></p>
    <p style="text-align:center;">Price : 3000 taka per day</p>
</body>

</html>
