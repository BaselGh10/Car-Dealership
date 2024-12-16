<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/master_page.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Bshar.Cars.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 329px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <strong>(You can sort either by Year or Price... Just click on the field that you want.)</strong></p>
    <p>
        <br />
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" CssClass="auto-style4" DataSourceID="SqlDataSource2" Font-Bold="True" ForeColor="Blue" Height="110px" Width="1000px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" DataKeyNames="Car Number" Font-Size="Large">
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" Height="15px" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Check it out" ControlStyle-BackColor="#33ccff" ControlStyle-Font-Bold="true" />
            <asp:BoundField DataField="Car Number" HeaderText="Car Number" ReadOnly="True" ControlStyle-Font-Size="X-Large"  />
            <asp:BoundField DataField="Brand" HeaderText="Brand" ControlStyle-Font-Size="X-Large"  />
            <asp:BoundField DataField="Model" HeaderText="Model" ControlStyle-Font-Size="X-Large"  />
            <asp:BoundField DataField="Producing Year" HeaderText="Producing Year" SortExpression="Producing Year" ControlStyle-Font-Size="X-Large"  />
            <asp:BoundField DataField="Color" HeaderText="Color" ControlStyle-Font-Size="X-Large"  />
            <asp:BoundField DataField="Selling Price" HeaderText="Selling Price" SortExpression="Selling Price" ControlStyle-Font-Size="X-Large"  />
        </Columns>
        <EditRowStyle Height="15px" />
        <EmptyDataRowStyle Height="15px" />
        <HeaderStyle BackColor="#66CCFF" BorderColor="Black" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="15px" Wrap="True" />
        <PagerStyle BackColor="Silver" Font-Bold="True" ForeColor="#3333FF" />
        <RowStyle Height="15px" />
        <SelectedRowStyle Height="15px" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT [Car Number], [Brand], [Model], [Producing Year], [Color], [Selling Price] FROM [Cars]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Sorry we didn't find results..." Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Italic="True" Height="31px" PostBackUrl="~/UsersPages/Search.aspx" Text="Back" Width="76px" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>
