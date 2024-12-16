<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Bshar.Cars.Carsaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        font-size: xx-large;
    }
    .auto-style6 {
        font-style: italic;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
<p>
    <strong><span class="auto-style5"><em>Hello</em></span></strong>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#FFCC00" Text="Label"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <span class="auto-style4"><strong><em>Choose your favorite brand:</em></strong></span></p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Italic="True" Width="280px" DataTextField="Name" DataValueField="Name" DataSourceID="SqlDataSource1">
        <asp:ListItem>Audi</asp:ListItem>
        <asp:ListItem>BMW</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT [Name] FROM [Brands]"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    <strong><em>From year:</em></strong>&nbsp;
    <asp:TextBox ID="txtMinYear" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>To year:</em></strong>&nbsp;
    <asp:TextBox ID="txtMaxYear" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    <strong><em>Min price:&nbsp;
    <asp:TextBox ID="txtMinPrice" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max price:</em></strong>&nbsp;
    <asp:TextBox ID="txtMaxPrice" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>
<p>
    <em>
    <asp:Button ID="Button1" runat="server" BackColor="Silver" CssClass="auto-style6" Font-Bold="True" Font-Italic="True" Height="31px" OnClick="Button1_Click" Text="Search" Width="87px" />
    </em>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button2" runat="server" BackColor="Silver" Font-Bold="True" Font-Italic="True" Height="33px" PostBackUrl="~/MainPages/Main.aspx" Text="Back to main page" Width="226px" />
</p>
<p>
    &nbsp;</p>
<p>
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="True" OnClick="LinkButton2_Click">Change password</asp:LinkButton>
</p>
<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" OnClick="LinkButton1_Click" PostBackUrl="~/UsersPages/Delete.aspx">Delete account</asp:LinkButton>
<p>
    &nbsp;<br />
    </p>
<br />
</asp:Content>
