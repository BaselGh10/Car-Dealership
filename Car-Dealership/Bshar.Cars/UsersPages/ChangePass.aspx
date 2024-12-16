<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="Bshar.Cars.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            width: 622px;
            text-align: right;
        }
        .auto-style9 {
            width: 622px;
            text-align: right;
            height: 45px;
        }
        .auto-style10 {
            text-align: left;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p class="auto-style4">
        <strong>Change your password...</strong></p>
    <p class="auto-style4">
        &nbsp;</p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style9"><strong>New Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Confirm Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Silver" Font-Bold="True" OnClick="Button1_Click" Text="Done" Font-Italic="True" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="There is a mistake" Visible="False" Font-Italic="True"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="Silver" Font-Bold="True" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main page" Font-Italic="True" OnClick="Button2_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
