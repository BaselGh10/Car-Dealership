<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Forgot.aspx.cs" Inherits="Bshar.Cars.Forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Hey"></asp:Label>
&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Label"></asp:Label>
&nbsp;<span class="auto-style4"><strong>!</strong></span></p>
    <p>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Before changing your password, we need to ensure that this is your account"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>What was your secret question?</strong></p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Width="250px">
            <asp:ListItem>What is the name of your pet ? </asp:ListItem>
            <asp:ListItem>What is your favorite sport ?</asp:ListItem>
            <asp:ListItem>What is your favorite food ?</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <strong>Your answer was:</strong></p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red" Text="There is a mistake !" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Bold="True" Height="32px" OnClick="Button2_Click" Text="Continue" Width="117px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="True" Height="32px" PostBackUrl="~/MainPages/SignIn.aspx" Text="Back" Width="61px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
