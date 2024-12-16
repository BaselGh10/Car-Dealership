<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="AdminSignIn.aspx.cs" Inherits="Bshar.Cars.AdminSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 36%;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style7 {
            width: 234px;
            font-weight: bold;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style7"><em>Admin Name:</em></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><em>Password:</em></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"><b><em>
                <br />
                <br />
                </em></b><em>
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" CssClass="auto-style6" Font-Bold="True" Font-Italic="True" Height="28px" OnClick="Button1_Click" Text="Sign in" Width="119px" />
                </em></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" BackColor="#999999" Font-Bold="True" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main page" OnClick="Button2_Click" />
    <br />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl="~/Pictures/lock.png" Width="489px" />
    <br />
    <br />
    <br />
</asp:Content>
