<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="Bshar.Cars.AddCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 38%;
            height: 429px;
        }
        .auto-style5 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style6 {
            width: 257px;
        }
        .auto-style7 {
            width: 257px;
            height: 38px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <br />
    <br />
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style5" colspan="2"><strong>Add a car:</strong></td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Car Number:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Brand:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Model:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Producing Year:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Color:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Price:</strong></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Number" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Picture:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox7" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <br />
                <span class="auto-style9">(If you leave price field empty, default price will be 50,000)</span></strong><br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" Font-Bold="True" Height="33px" OnClick="Button1_Click" Text="Add" Width="61px" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Car added successfully" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Fill all fields" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" Font-Bold="True" Height="32px" PostBackUrl="~/AdminPages/AdminPage.aspx" Text="Back" Width="70px" />
    <br />
    <br />
    <br />
</asp:Content>
