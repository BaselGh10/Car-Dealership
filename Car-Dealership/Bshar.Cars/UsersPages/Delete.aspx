<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Bshar.Cars.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <br />
    </p>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Delete the account !"></asp:Label>
    <br />
    <br />
    Are you sure that you want to continue?<br />
    you will not be able to recover your account !<br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Silver" Font-Bold="True" Font-Italic="True" OnClick="Button1_Click" Text="I am sure" />
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="264px" ImageUrl="~/Pictures/sad-clipart-6.png" Width="328px" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" BackColor="Silver" Font-Bold="True" Font-Italic="True" OnClick="Button2_Click" PostBackUrl="~/MainPages/Main.aspx" Text="No (Go to main page)" />
    <br />
    <br />
</asp:Content>
