<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="RemoveCar.aspx.cs" Inherits="Bshar.Cars.RemoveCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p class="auto-style4">
        <strong>Which car do yo want to remove ?</strong></p>
    <p class="auto-style4">
        &nbsp;</p>
    <p>
        <strong><span class="auto-style5">Car Number:</span></strong>&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="177px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" OnClick="Button1_Click" Text="Remove" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Done !" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text="Car doesn't exist" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" Font-Bold="True" Height="32px" PostBackUrl="~/AdminPages/AdminPage.aspx" Text="Back" Width="72px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
