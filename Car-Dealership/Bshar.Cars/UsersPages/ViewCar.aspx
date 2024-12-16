<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="ViewCar.aspx.cs" Inherits="Bshar.Cars.ViewCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: x-large;
            text-decoration: underline;
            color: #0033CC;
        }
        .auto-style7 {
            width: 49%;
            height: 297px;
        }
        .auto-style15 {
            color: #0033CC;
        }
        .auto-style16 {
            height: 50px;
            width: 639px;
            text-align: left;
        }
        .auto-style17 {
            height: 50px;
            width: 639px;
            text-align: right;
        }
        .auto-style18 {
            height: 50px;
            width: 639px;
            text-align: left;
            text-decoration: underline;
            background-color: #008B8B;
        }
        .auto-style19 {
            color: #FFFFFF;
            width: 852px;
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <strong><span class="auto-style5"><em>Car Details :</em></span><span class="auto-style4"><em>&nbsp;&nbsp;&nbsp; </em></span><em>
    <br class="auto-style4" />
    <br />
    <table align="center" class="auto-style7">
        <tr>
            <td class="auto-style17"><span class="auto-style19">Plate Number:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Brand:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Model:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Producing Year:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Color:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style15">Price:</span><strong><em>&nbsp;&nbsp; </em></strong></td>
            <td class="auto-style18"><strong><em>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </em></strong></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#0099FF" Font-Bold="True" Height="42px" Text="Buy the car" Width="159px" OnClick="Button1_Click" />
&nbsp;</em><br />
    <br />
    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Red" Text="The car is sold" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    </strong>
    <asp:Image ID="Image1" runat="server" Height="300px" Width="500px" />
    <em>
    <br />
    <br />
    </em>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Black" PostBackUrl="~/UsersPages/Search.aspx">Search for another</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
