<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .homee{
            background: url('http://localhost:50882/images/redcar1.jpg') no-repeat center center;
            background-size: cover;
            width: 100%;
            height: 90vh;
            z-index:-1;
        }

       /*.welcome1 {
            width: 100px;
            top: 50%;
            margin-left: 30%;
            text-transform: uppercase;
            text-align: center;
            color: white;
            font-family: 'Lucida Sans Unicode';
            font-weight: bold;
        }*/ 
        .banner{
            width:80%;
            color:white;
            margin:10% auto 0;
        }
        .banner h1{
             font-size:60px;
       }
        .banner p{
            font-size:16px;
            margin:40px 0 50px;
        }
        .banner ul{
            list-style-type:none;
            display:inline-flex;
        }
        .banner ul li{
            margin-right:25px;
            position:relative;
        }
        .banner ul li a{
            text-decoration:none;
            color:white;
            border:2px solid white;
            display:block;
            padding:10px;
            width:120px;
            text-align:center;
            z-index:2;
        }
            .banner ul li a:hover {
                border:2px solid #ed1c24;
                transition:0.3s;
            }
            .banner ul li a span{
                display:block;
                width:0;
                height:100%;
                background:#ed1c24;
                top:0;
                position:absolute;
                transition:0.3s;
                z-index:1;
                color:white;
            }
            .banner ul li a:hover span{
                width:100%;
               
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
      <div class="homee"><br />
            <div class="banner">
             <h1>AutoMobile Spare Parts</h1>
             <p>We can help you to find the perfect spare part for your car</p>
              <ul>
                  <li><span></span>
                   <a href="Register.aspx">Register</a>
                  </li>
                  <li><span></span>
                   <a href="Products.aspx">Search Products</a>
                  </li>

              </ul>
              </div><br />
      </div>
</asp:Content>

