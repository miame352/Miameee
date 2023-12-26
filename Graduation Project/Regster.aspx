<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Regster.aspx.cs" Inherits="Graduation_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 559px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">
    Register</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">UserName</td>
            <td>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Add username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="txtPss" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPss" ErrorMessage="Add passowrd"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">RePassword</td>
            <td>
                <asp:TextBox ID="txtRePass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRePass" ErrorMessage="Add Repassword"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Add Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Register" />
            </td>
            <td>
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
