<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .prodbody{
            
            background: url("/images/whitebg.jpeg") no-repeat;
             background-size: cover;
            height: 84vh;
        }
        .dds{             
            position: absolute;
            top:30%;
            left:20%;
        }
        .btn{
              width:100%;
            background-color:#272020;
            border:2px solid white;
            color:white;
            padding:5px;
            font-size:20px;
            margin:12px 0;
        } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="prodbody">
    <div class="dds">
    Select your Car Make: 
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Width="200px">
    </asp:DropDownList>
    <br />
    <br />
    Select your Car Model: 
    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px"></asp:DropDownList>
    <br /><br />
    Select your Spare Part: 
    <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
        <asp:ListItem Value="wipers">Wipers</asp:ListItem>
        <asp:ListItem Value="bulbs_horns">Bulbs &amp; Horns</asp:ListItem>
        <asp:ListItem Value="electrical_parts">Electrical Parts</asp:ListItem>
        <asp:ListItem Value="insulation_tapes">Insulation Tapes</asp:ListItem>
        <asp:ListItem Value="wiring_kit">Wiring Kit</asp:ListItem>
        <asp:ListItem Value="brake_parts">Brake Parts</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Search" OnClick="Button1_Click" />
    
    </div>
<div style="top:30%; left:50%;"><img src="images/enginepic.jpg" /></div>
</div>

</asp:Content>

