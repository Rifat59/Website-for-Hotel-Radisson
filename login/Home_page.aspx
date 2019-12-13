<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_page.aspx.cs" Inherits="login.WebForm1" %>


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
.mySlides {display:none;}
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
.column.contact1 {
  width: 30%;
}
.column.contact2 {
  width: 70%;
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
    <br>
    <div class="w3-content w3-section" style="max-width:500%; height: 500px">
        <img class="mySlides" src="Images/radison1.jpg" style="width:100%;height: 100%">
        <img class="mySlides" src="Images/radison2.jpg" style="width:100%;height: 100%">
        <img class="mySlides" src="Images/radison3.jpg" style="width:100%;height: 100%">
        <img class="mySlides" src="Images/radison4.jpg" style="width:100%;height: 100%">
    <div>
        <asp:Button class="w3-bar-item w3-button w3-large w3-right w3-orange" ID="register" runat="server" Text="Register" OnClick="Button1_Click" />
        &nbsp;
        <asp:Button class="w3-bar-item w3-button w3-large w3-right w3-light-green" ID="signin" runat="server" Text="Sign-In" OnClick="signin_Click" />
    </div>
    </div>
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 3000);
        }
    </script>
    <br>
    <div class="w3-bar w3-green">
        <a href="Home_page.aspx" class="w3-bar-item w3-button w3-large">Home</a>
        <a href="Room.aspx" class="w3-bar-item w3-button w3-large">Rooms</a>
        <a href="Reservation.aspx" class="w3-bar-item w3-button w3-large">Reservations</a>
        <a href="Services.aspx" class="w3-bar-item w3-button w3-large">Services</a>
        <a href="#contacts" class="w3-bar-item w3-button w3-large">Contacts</a>
        <div class="w3-dropdown-hover">
                <button class="w3-button w3-large w3-green">More</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                  <a href="Packeges_Offers.aspx" class="w3-bar-item w3-button">Packages & Offers</a>
                  <a href="#contacts" class="w3-bar-item w3-button">About Us</a>
                  <a href="Feedback.aspx" class="w3-bar-item w3-button">Feedback</a>
                </div>
        </div> 
        <button class="w3-bar-item w3-button w3-green w3-mobile w3-padding-large w3-right">Go</button>  
        <input type="text" class="w3-bar-item w3-input w3-white w3-mobile w3-padding-large w3-right" placeholder="Search.."> 
    </div>
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
    <div class="anm" style="background-color: olivedrab;">
      <h2 style="margin-left: 500px"> Food Corner </h2>
    </div>
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
    <div class="row">
      <div class="column contact1">
          <div id="contacts">
            <h3 style="color: blue">Contacts</h3>
          </div>  
        <ul>
          <li>Airport Road</li>
          <li>Dhaka Cantonment</li>
          <li>Dhaka 1206</li>
          <li>Bangladesh</li>
          <br>
          <li>Tel: +880 2 983 4555</li>
          <li>Fax: +880 2 983 4554 / 983 4504</li>
          <li><a href="#home">Hsales.dhaka@radisson.com</a></li>
        </ul>
      </div>
      <div class="column contact2">
          <h3>Details</h3>
          <p>Hotel Radison is one the best restaurents in Bangladesh.It is locatd in Dhaka, the capital of Bangladesh. It ia a five star restaurent.
             It provides lot of services to customer. There are some fantastic rooms, seminar rooms, playing rooms, meeting rooms, living room 
             such as single room, double room, deluxe room etc for customers.This restaurent also provides healthy and delicious foods to the customers.
          </p>
          <h3>History</h3>
          <p>
              Radisson Blu (formerly Radisson SAS) is an upscale international chain of full service hotels and resorts brand for Radisson Hospitality,
              Inc. (formerly Carlson Hotels) and Radisson Hospitality AB (formerly Rezidor Hotel Group) mostly outside the United States, including 
              those in Europe, Africa, and Asia. Radisson Hospitality AB was a listed subsidiary of Radisson Hotel Group since 2010, but it was
              established as a division of SAS Group. As of December 2014, Radisson Blu has 287 hotels operating throughout the world with 68,270
              rooms, and 102 hotels under development with an additional 23,489 rooms.
          </p>
      </div>
  </div>

    </form>

</body>

</html>