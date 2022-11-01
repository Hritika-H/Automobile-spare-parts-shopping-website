<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .hero {
            height: 100vh;
            width: 100%;
            background-image: url(http://localhost:50882/images/sky.jpg);
            background-size:cover;
            background-position:center;
            position:relative;
            overflow-x:hidden;
        }
        .highway {
            height: 200px;
            width: 500%;
            display: block;
            background-image: url(http://localhost:50882/images/road.jpg);
            position:absolute;
            bottom:0;
            left:0;
            right:0;
            z-index:1;
            animation:highway 5s linear infinite;
        }
        @keyframes highway{
            100%{
                transform:translateX(-3400px);
            }
        }
        .city {
            height: 250px;
            width: 500%;
            background-image: url(http://localhost:50882/images/city.png);
            position:absolute;
            bottom:200px;
            left:0;
            right:0;
            display:block;
            z-index:1;
            background-repeat:repeat-x;
            animation:city 20s linear infinite;
        }
        @keyframes city{
            100%{
                transform:translateX(-1400px);
            }
        }
        .car{
            width:400px;
            left:50%;
            bottom:100px;
            transform:translateX(-50%);
            position:absolute;
            z-index:2;
        }
        .car img{
            width:100%;
            animation:car 1s linear infinite;
        }
        @keyframes car{
            100%{
                transform:translateY(-1px);
            }
            50%{
                transform:translateY(1px);
            }
            0%{
                transform:translateY(-1px);
            }
        }
        .wheel{
            left:50%;
            bottom:178px;
            transform:translateX(-50%);
            position:absolute;
            z-index:2;
        }
        .wheel img{
            width:72px;
            height:72px;
            animation:wheel 1s linear infinite;
        }
        .back-wheel{
            left:-165px;
            position:absolute;
        }
        .front-wheel{
            left:80px;
            position:absolute;
        }
        @keyframes wheel{
            100%{
                transform:rotate(360deg);
            }
        }
        .text1{
            font-size:20px;
            font-family:Arial, Helvetica, sans-serif;
            
            top:10px;
            left:10%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="hero">
       <p class="text1">Address: 1,Vakil Building, Avantikabai Gokhale Street, 
                Opera House, Near Laxmibaug, Mumbai-4000 04 Contact us:Tell:022-2382 1311</p>
        <div class="highway"></div>
        <div class="city"></div>
        <div class="car"><img src="images/car.png" /></div>
       <div class="wheel">
           <img src="images/wheel.png" class="back-wheel" />
           <img src="images/wheel.png" class="front-wheel" />
       </div>
    </div>

    <!-- <asp:Table ID="Table1" runat="server" BorderStyle="Solid" CellPadding="10" BorderColor="#FF3300" BorderWidth="5px">
        <asp:TableRow>
            <asp:TableCell>Address:
                1,Vakil Building, Avantikabai Gokhale Street, 
                Opera House, Near Laxmibaug, Mumbai-4000 04
</asp:TableCell>
            <asp:TableCell>Tell:022-2382 1311</asp:TableCell>
        </asp:TableRow>
    </asp:Table>--> 
</asp:Content>

