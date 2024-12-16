<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Bshar.Cars.Buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 27%;
            height: 216px;
        }
        .auto-style6 {
            font-size: x-large;
            height: 57px;
        background-color: #666666;
    }
        .auto-style9 {
            height: 44px;
        }
        .auto-style10 {
            background-color: #33CCFF;
        }
        .auto-style11 {
            width: 330px;
            text-align: center;
            height: 44px;
        }
    .auto-style17 {
        color: #000000;
        background-color: #666666;
    }
    .auto-style18 {
        color: #FFFFFF;
        background-color: #666666;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style6" colspan="2"><strong><span class="auto-style18">&nbsp; </span><span class="auto-style17">Enter your phone number to help us to contact you, and confirm the order... </span></strong></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>
                <br />
                <br />
                Phone number:</strong></td>
            <td class="auto-style9">
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Confirm" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label3" runat="server" BackColor="#666666" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#FFCC00" Text="Congratulatios ! We will contact you soon !" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="We couldn't complete the order..." Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Font-Bold="True" PostBackUrl="~/UsersPages/Search.aspx" Text="Search for another" OnClick="Button2_Click" />
    <br />
    <br />
    <br />
</asp:Content>
