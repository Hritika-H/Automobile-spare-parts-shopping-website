<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .loginbody {
            background: url("http://localhost:50882/images/blackcar1.jpeg") no-repeat;
             background-size: cover;
            height: 84vh;
        }

        .loginbox {
            width: 280px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            color: white;

        }

            .loginbox h1 {
               
                font-size: 40px;
                border-bottom: 6px solid white;
                margin-bottom: 50px;
                padding: 13px 0;
            }

        .textbx{
            width: 100%;
            overflow: hidden;
            font-size: 20px;
            padding: 8px 0;
            margin: 8px 0;
            border-bottom: 1px solid white;
        }
        #loginuname,#loginpasswd{
            border:none;
            outline:none;
            background:none;
            color:white;
            font-size:20px;
            width:100%;
            float:left;
            margin:0 10px;
        }
        .loginbtnn{
            width:100%;
            background-color:#272020;
            border:2px solid white;
            color:white;
            padding:5px;
            font-size:20px;
            margin:12px 0;
        }
        #ptag{
          font-size:20px;  
         color:white;
         font-family:Arial, Helvetica, sans-serif;
         height:30px;
        }
        #ptag a{
            color:cornflowerblue;
            font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="loginbody">
        <div class="loginbox">
            <h1>Login</h1>
            <div class="textbx">
                <asp:TextBox ID="loginuname" runat="server" placeholder="Username"></asp:TextBox><br />

                <asp:RequiredFieldValidator ID="loginunamevalidate" runat="server" ControlToValidate="loginuname" ErrorMessage="Enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="textbx">
                <asp:TextBox ID="loginpasswd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />

                <asp:RequiredFieldValidator ID="loginpasswdvalidate" runat="server" ControlToValidate="loginpasswd" ErrorMessage="Enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="loginbtn" CssClass="loginbtnn" runat="server" Text="Login" OnClick="loginbtn_Click" />
            <asp:Label ID="Loginmsg" runat="server" Text="..."></asp:Label>
        </div>
        <p id="ptag">Don't have an account?<br /> Register here for free!<a href="Register.aspx">"Click Here"</a></p>

        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>
    </div>

</asp:Content>

