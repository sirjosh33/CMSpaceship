<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MembersOnly.aspx.cs" Inherits="CMSpaceship.Account.MembersOnly" %>
<%@ Register TagPrefix="uc" Namespace="SkyGroundLabs.aspnet.Binding" Assembly="SkyGroundLabs.aspnet" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <div id="wrapper">
        <div>
            <asp:Label ID="JoshLog" runat="server" Text="Label"></asp:Label>
        </div>
   </div>
    <div id="wrapper-lower">
        <form id="form2" runat="server">
            <div>
                <table>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name" />
                        </td>
                        <td class="auto-style1">
                            <uc:BindableTextBox ID="btxtFirstName" runat="server" Path="FirstName" Width="150px" PropertyName="Text" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblLastName" runat="server" Text="Last Name" /></td>
                        <td><uc:BindableTextBox ID="btxtLastName" runat="server" Path="LastName" Width="150px" PropertyName="Text" /></td>
                    </tr>
                    <tr><td><asp:Label ID="lblEmail" runat="server" Text="Email" /></td>
                    <td><uc:BindableTextBox ID="btxtEmail" runat="server" Path="Email" Width="150px" PropertyName="Text" /></td></tr>
                    <tr>        <td>            <asp:Label ID="lblStreet" runat="server" Text="Street" /></td>
                    <td><uc:BindableTextBox ID="btxtStreet" runat="server" Path="Street" Width="150px" PropertyName="Text" /></td></tr>
                    <tr>                    <td><asp:Label ID="lblCity" runat="server" Text="City" /></td>
                    <td><uc:BindableTextBox ID="btxtCity" runat="server" Path="City" Width="150px" PropertyName="Text" /></td></tr>
                    <tr>     <td>               <asp:Label ID="lblStateID" runat="server" Text="State" /></td>
                    <td><uc:BindableTextBox ID="State" runat="server" Path="State" Width="150px" PropertyName="Text" /></td></tr>
                    <tr><td>              <asp:Label ID="lblZip" runat="server" Text="Zip" /></td>      
                    <td><uc:BindableTextBox ID="btxtZip" runat="server" Path="Zip" Width="150px" PropertyName="Text" /></td></tr>
                    <tr>     <td>              <asp:Label ID="lblPhone1" runat="server" Text="Phone1" /></td> 
                    <td><uc:BindableTextBox ID="btxtPhone1" runat="server" Path="Phone1" Width="150px" PropertyName="Text" /></td></tr>
                </table>
                <asp:Button ID="SubmitContact" runat="server" OnClick="SubmitContact_Click" Text="Submit" />
            </div>
        </form>
    </div>
    
</body>
</html>
