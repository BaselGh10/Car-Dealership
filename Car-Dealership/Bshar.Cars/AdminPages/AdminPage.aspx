<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Bshar.Cars.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            background-color: #FFFF00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <span class="auto-style4"><strong>Welcome Admin:</strong> </span>
    <asp:Label ID="Label3" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="40px" Text="Add a car" Width="210px" PostBackUrl="~/AdminPages/AddCar.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="40px" Text="Remove a car" Width="210px" PostBackUrl="~/AdminPages/RemoveCar.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="40px" Text="Add Admin" Width="210px" PostBackUrl="~/AdminPages/AddAdmin.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="40px" Text="Remove Admin" Width="210px" PostBackUrl="~/AdminPages/RemoveAdmin.aspx" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="~/Pictures/lock.png" Width="578px" />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" Font-Bold="True" Height="41px" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main page" Width="250px" Font-Size="Large" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
