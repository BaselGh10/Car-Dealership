<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Bshar.Cars.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            width: 40%;
            height: 148px;
            margin-top: 3px;
        }
        .auto-style11 {
            height: 47px;
            background-color: #999999;
        }
        .auto-style8 {
            width: 230px;
            height: 46px;
            background-color: #999999;
        }
        .auto-style9 {
            height: 46px;
            background-color: #999999;
        }
        .auto-style6 {
            background-color: #C0C0C0;
        }
        .auto-style17 {
        color: #000000;
        background-color: #999999;
    }
    .auto-style18 {
        font-size: x-large;
        background-color: #C0C0C0;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table align="center" class="auto-style4">
    <tr>
        <td class="auto-style18" colspan="2"><strong>Sign In</strong></td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>User Name:</strong></td>
        <td class="auto-style11"><strong>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Password:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2"><strong>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#999999" Font-Bold="True" Height="32px" OnClick="Button1_Click" Text="Let's Go" Width="112px" />
            &nbsp;<br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" OnClick="LinkButton2_Click">Forgot password</asp:LinkButton>
            <br />
            <br />
            OR...<br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" PostBackUrl="~/MainPages/SignUp.aspx">I don&#39;t have an account</asp:LinkButton>
            <br />
            <br />
            <br />
            </strong></td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
