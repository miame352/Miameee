<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Graduation_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 101%;
        height: 136px;
    }
    .auto-style2 {
            width: 417px;
        }
    .auto-style3 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">
    Login</h1>
<table class="auto-style1">
    <tr>
        <td class="auto-style2">UserName</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Password</td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </td>
        <td>
            <asp:Label ID="lblText" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
