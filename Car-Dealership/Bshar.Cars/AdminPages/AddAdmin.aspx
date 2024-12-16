<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Bshar.Cars.AddAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <span class="auto-style4"><strong>Add Admin:<br />
    </strong></span>
    <br />
    <br />
    <span class="auto-style5"><strong>Admin Name:&nbsp; </strong></span>
    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" CssClass="auto-style5"></asp:TextBox>
    <br class="auto-style5" />
    <br />
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><span class="auto-style5"><strong>Password:&nbsp; </strong></span><strong>
    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="Large" Height="36px" OnClick="Button1_Click" Text="Add" Width="86px" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Done !" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text="This name is taken, try another name..." Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br class="auto-style5" />
    <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" Font-Bold="True" Height="30px" PostBackUrl="~/AdminPages/AdminPage.aspx" Text="Back" Width="84px" />
    </strong>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
