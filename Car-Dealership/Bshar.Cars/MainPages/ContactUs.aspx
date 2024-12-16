<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Bshar.Cars.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 39%;
            background-color: #000000;
        }
        .auto-style5 {
            width: 123px;
            color: #FFFFFF;
        }
        .auto-style8 {
            text-align: left;
            width: 330px;
            background-color: #000000;
        }
        .auto-style9 {
            margin-left: 1014px;
            margin-top: 0px;
        }
        .auto-style17 {
            width: 123px;
            height: 43px;
            color: #FFFFFF;
        }
        .auto-style18 {
            text-align: left;
            height: 43px;
            width: 330px;
            background-color: #000000;
        }
        .auto-style19 {
            width: 123px;
            height: 42px;
            color: #FFFFFF;
        }
        .auto-style20 {
            text-align: left;
            height: 42px;
            width: 330px;
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="Stay connected with us !"></asp:Label>
        <br />
    </p>
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style19"><strong>Name:</td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>E-Mail:</strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox2" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Subject:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>The message:</strong></td>
            <td class="auto-style8" rowspan="7">
                <asp:TextBox ID="TextBox4" runat="server" Height="196px" TextMode="MultiLine" Width="310px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9" Height="22px">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Pictures/car-gear-clipart-6.png" Height="281px" Width="470px" />
    </asp:Panel>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" OnClick="Button1_Click" Text="Send" Font-Size="Large" Height="40px" Width="94px" />
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Thank you, your message is sent to us..." Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Bold="True" Height="33px" PostBackUrl="~/MainPages/Main.aspx" Text="Back" Width="68px" />
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
