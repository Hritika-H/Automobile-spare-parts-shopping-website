<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color:darkslategrey;
            color:white;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            height: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>

        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Signout</asp:LinkButton>
                </td>
                <td class="auto-style2">Number of products in cart:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
        <asp:LinkButton ID="LinkButton3" runat="server">ViewCart</asp:LinkButton>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>

    </div>
   <br /><br />
    <asp:Label ID="Label1" runat="server" Text="You Searched for: "></asp:Label><br />
    
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="auto-style1" border="1" style="background-color: rgba(237, 39, 39, 0.64); color: black;">
                <tr>
                    <td>Car make:<%#Eval("p_cmake") %></td>
                </tr>
                <tr>
                    <td>Car model:<%#Eval("p_cmodel") %></td>
                </tr>
                <tr>
                    <td>SparePart:<%#Eval("sparepart") %></td>
                </tr>
                <tr>
                    <td>Description:<%#Eval("p_description") %></td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style3"><img src="<%#Eval("p_imgurl") %>" alt="Could not load image" height="200px" width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>Price:<%#Eval("price") %></td>
                </tr>
                <!--<tr>
                    <td> Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" AutoPostBack="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                </tr>-->
                <tr>
                    <td style="text-align: center"><asp:Button ID="addtocartbtn" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("pid")%>' CommandName="addtocart" /></td>                    
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
    <br />
    
    
   
    
    
   
</asp:Content>

