<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InviteData.aspx.cs" Inherits="Graduation_Project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 333px;
            height: 52px;
        }
        .auto-style4 {
            width: 333px;
            height: 80px;
        }
        .auto-style5 {
            height: 80px;
        }
        .auto-style6 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1">Invite Data</h1>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">Major</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtmajor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Number of Seats</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtnumberofseats" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btnAddinvite" runat="server" OnClick="btnAddinvite_Click" Text="Add invite" />
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
