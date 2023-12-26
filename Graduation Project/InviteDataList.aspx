<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InviteDataList.aspx.cs" Inherits="Graduation_Project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1">Invite List</h1>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InviteID" DataSourceID="inviteSDS">
            <Columns>
                <asp:BoundField DataField="InviteID" HeaderText="InviteID" InsertVisible="False" ReadOnly="True" SortExpression="InviteID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="NumberOfSeats" HeaderText="NumberOfSeats" SortExpression="NumberOfSeats" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="inviteSDS" runat="server" ConnectionString="<%$ ConnectionStrings:DBtodoConstr %>" SelectCommand="SELECT * FROM [InviteData] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
