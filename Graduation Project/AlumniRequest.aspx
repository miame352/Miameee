<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AlumniRequest.aspx.cs" Inherits="Graduation_Project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 162px;
        }
        .auto-style4 {
            width: 162px;
            height: 93px;
        }
        .auto-style5 {
            height: 93px;
        }
        .auto-style6 {
            width: 162px;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1">Alumni Request</h1>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">RequestName</td>
            <td>
                <asp:TextBox ID="txtRequestName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">RequestDate</td>
            <td>
                <asp:TextBox ID="txtRequestDate" runat="server" TextMode="DateTime"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">RequestTime</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="RequestType" DataValueField="RequestType">
                    <asp:ListItem>Lost Sertification</asp:ListItem>
                    <asp:ListItem>Transcript</asp:ListItem>
                    <asp:ListItem>CV</asp:ListItem>
                    <asp:ListItem>-select-</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="RequestSDS" runat="server" ConnectionString="<%$ ConnectionStrings:DBtodoConstr %>" DeleteCommand="DELETE FROM [AlumniRequestData] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [AlumniRequestData] ([UserID], [RequestName], [RequestDate], [RequestType]) VALUES (@UserID, @RequestName, @RequestDate, @RequestType)" SelectCommand="SELECT * FROM [AlumniRequestData]" UpdateCommand="UPDATE [AlumniRequestData] SET [UserID] = @UserID, [RequestName] = @RequestName, [RequestDate] = @RequestDate, [RequestType] = @RequestType WHERE [RequestID] = @RequestID">
                    <DeleteParameters>
                        <asp:Parameter Name="RequestID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="RequestName" Type="String" />
                        <asp:Parameter Name="RequestDate" Type="DateTime" />
                        <asp:Parameter Name="RequestType" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="RequestName" Type="String" />
                        <asp:Parameter Name="RequestDate" Type="DateTime" />
                        <asp:Parameter Name="RequestType" Type="String" />
                        <asp:Parameter Name="RequestID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBtodoConstr %>" DeleteCommand="DELETE FROM [AlumniRequestData] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [AlumniRequestData] ([RequestName], [RequestDate], [RequestType], [UserID]) VALUES (@RequestName, @RequestDate, @RequestType, @UserID)" SelectCommand="SELECT [RequestName], [RequestDate], [RequestType], [UserID], [RequestID] FROM [AlumniRequestData]" UpdateCommand="UPDATE [AlumniRequestData] SET [RequestName] = @RequestName, [RequestDate] = @RequestDate, [RequestType] = @RequestType, [UserID] = @UserID WHERE [RequestID] = @RequestID">
                    <DeleteParameters>
                        <asp:Parameter Name="RequestID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txtRequestName" Name="RequestName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRequestDate" Name="RequestDate" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="RequestType" PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RequestName" Type="String" />
                        <asp:Parameter Name="RequestDate" Type="DateTime" />
                        <asp:Parameter Name="RequestType" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="RequestID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
