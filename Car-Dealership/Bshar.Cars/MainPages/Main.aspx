<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Bshar.Cars.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: medium;
            background-color: #0099FF;
        }
        .auto-style5 {
            font-size: x-large;
            height: 28px;
        }
        .auto-style8 {
            height: 81px;
            text-align: center;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
            background-color: #0099FF;
            font-style: italic;
        }
        .auto-style10 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        <strong><em>Welcome to our website, rent or own your dream car here...</em></strong></p>
    <p class="auto-style5">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="(You need to sign in before browsing this website...)"></asp:Label>
    </p>
    <p class="auto-style8">
        <br class="auto-style4" />
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <em>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="50px" Text="Sign in" Width="230px" PostBackUrl="~/MainPages/SignIn.aspx" OnClick="Button2_Click1" Font-Names="Andalus" />
        </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <em>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Height="50px" Text="Sign up" Width="230px" PostBackUrl="~/MainPages/SignUp.aspx" OnClick="Button3_Click" Font-Names="Andalus" />
        </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <asp:Image ID="Image1" runat="server" Height="332px" ImageUrl="~/Pictures/blue-car-png-3.png" Width="748px" CssClass="auto-style10" />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" PostBackUrl="~/AdminPages/AdminSignIn.aspx" ForeColor="Aqua">Sign in as Admin</asp:LinkButton>
    <br />
    <br />
    </asp:Content>
