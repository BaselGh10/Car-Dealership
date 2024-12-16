<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Bshar.Cars.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 73%;
            height: 467px;
        }
        .auto-style5 {
            height: 49px;
            background-color: #999999;
        color: #000000;
    }
        .auto-style9 {
            height: 57px;
            background-color: #999999;
            font-size: x-large;
        color: #000000;
    }
        .auto-style10 {
            width: 600px;
            background-color: #C0C0C0;
            height: 36px;
        }
        .auto-style12 {
            background-color: #C0C0C0;
            height: 36px;
            text-align: center;
        }
        .auto-style14 {
        color: #000000;
    }
    .auto-style15 {
        width: 467px;
        height: 36px;
        color: #000000;
        background-color: #C0C0C0;
    }
    .auto-style16 {
        height: 36px;
        text-align: center;
        font-size: x-large;
        width: 489px;
        background-color: #C0C0C0;
    }
    .auto-style17 {
        height: 36px;
        text-decoration: underline;
        font-size: large;
        width: 489px;
        background-color: #CCCCCC;
    }
        .auto-style18 {
        width: 852px;
        height: 36px;
        color: #000000;
        background-color: #CCCCCC;
    }
    .auto-style19 {
        height: 36px;
        text-align: center;
        font-size: x-large;
        width: 489px;
        text-decoration: underline;
        background-color: #CCCCCC;
    }
    .auto-style20 {
        color: #000000;
        width: 852px;
        background-color: #999999;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <table class="auto-style4" align="center">
        <tr>
            <td class="auto-style9" colspan="2"><strong>Sign Up</strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>User Name:</strong></td>
            <td class="auto-style19"><strong>
                <asp:TextBox ID="TextBox2" runat="server" Width="250px" AutoCompleteType="Disabled"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Password:</strong></td>
            <td class="auto-style17"><strong>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Confirm Password:</strong></td>
            <td class="auto-style17"><strong>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Secret Question:</strong></td>
            <td class="auto-style17"><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Width="250px">
                    <asp:ListItem>What is the name of your pet ? </asp:ListItem>
                    <asp:ListItem>What is your favorite sport ?</asp:ListItem>
                    <asp:ListItem>What is your favorite food ?</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Question&#39;s Answer:</strong></td>
            <td class="auto-style17"><strong>
                <asp:TextBox ID="TextBox5" runat="server" Width="250px" AutoCompleteType="Disabled"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2"><strong>
                <br class="auto-style14" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="I Am Ready !" OnClick="Button1_Click" BackColor="Silver" />
                <br class="auto-style14" />
                <br class="auto-style14" />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False" BackColor="#666666" Width="60px" CssClass="auto-style14"></asp:Label>
                <br class="auto-style14" />
                <br class="auto-style14" />
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" PostBackUrl="~/MainPages/SignIn.aspx" CssClass="auto-style20">I have an account</asp:LinkButton>
                <br class="auto-style14" />
                <br class="auto-style14" />
                <br class="auto-style14" />
                </strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="Silver" Font-Bold="True" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
