<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="RemoveAdmin.aspx.cs" Inherits="Bshar.Cars.RemoveAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p class="auto-style4">
        <strong>Who do you want to remove ?</strong></p>
    <p class="auto-style4">
        &nbsp;</p>
    <p class="auto-style5">
        <strong>Admin Name:&nbsp; </strong>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" Height="21px" Width="193px"></asp:TextBox>
    </p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" Height="37px" OnClick="Button1_Click" Text="Remove" Width="109px" />
    </p>
    <p class="auto-style5">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Font-Bold="True" Text="Done !" Visible="False"></asp:Label>
    </p>
    <p class="auto-style5">
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Font-Bold="True" ForeColor="Red" Text="Admin doesn't exist" Visible="False"></asp:Label>
    </p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        &nbsp;</p>
    <p class="auto-style5">
        <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" Font-Bold="True" Height="34px" PostBackUrl="~/AdminPages/AdminPage.aspx" Text="Back" Width="75px" />
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
