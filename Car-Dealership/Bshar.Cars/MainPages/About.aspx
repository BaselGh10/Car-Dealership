<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Bshar.Cars.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p class="auto-style4">
        <strong><em>Say hello to your dream car, here you can find the luxury car that you are looking for !&nbsp; </em></strong></p>
    <strong><em><span class="auto-style4">You can search for the car you want easily in our website, its easy fast and amazing...<br />
    <br />
    You can BUY or RENT your perfect luxurious car now...<br />
&nbsp;
    <br />
    What are you waiting for !!<br />
    <br />
    </span>
    <asp:Image ID="Image1" runat="server" Height="406px" Width="813px" CssClass="auto-style5" ImageUrl="~/Pictures/car-back-png-4.png" />
    <br />
    <span class="auto-style4">
    <asp:Button ID="Button1" runat="server" BackColor="Silver" CssClass="auto-style6" Font-Bold="True" PostBackUrl="~/MainPages/Main.aspx" style="height: 29px" Text="Back" />
    <br />
    <br />
    </span>
    <br />
    <br />
    </em></strong>
</asp:Content>
