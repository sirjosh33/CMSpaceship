<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CMSpaceship.Account.Register" %>

<%@ Register TagPrefix="uc" Namespace="Ion.aspnet.Binding" Assembly="Ion.aspnet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="lblFirstName1" runat="server" Text="First Name" />
                <asp:Label ID="lblFirstName" runat="server" Text="First Name" />
                <uc:BindableTextBox ID="btxtFirstName" runat="server" Path="FirstName" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblLastName" runat="server" Text="Last Name" />
                <uc:BindableTextBox ID="btxtLastName" runat="server" Path="LastName" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblEmail" runat="server" Text="Email" />
                <uc:BindableTextBox ID="btxtEmail" runat="server" Path="Email" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblUserName" runat="server" Text="User Name" />
                <uc:BindableTextBox ID="btxtUsername" runat="server" Path="Username" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblPassword" runat="server" Text="Password" />
                <uc:BindableTextBox ID="btxtPassword" runat="server" Path="Password" Width="150px" PropertyName="Text" TextMode="Password" />
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" />
                <uc:BindableTextBox ID="btxtPasswordConfirm" runat="server" Path="Password" Width="150px" PropertyName="Text" TextMode="Password" />
                <asp:Label ID="lblStreet" runat="server" Text="Street" />
                <uc:BindableTextBox ID="btxtStreet" runat="server" Path="Street" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblCity" runat="server" Text="City" />
                <uc:BindableTextBox ID="btxtCity" runat="server" Path="City" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblStateID" runat="server" Text="State" />
                <uc:BindableTextBox ID="State" runat="server" Path="State" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblZip" runat="server" Text="Zip" />
                <uc:BindableTextBox ID="btxtZip" runat="server" Path="Zip" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblPhone1" runat="server" Text="Phone1" />
                <uc:BindableTextBox ID="btxtPhone1" runat="server" Path="Phone1" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblPhone2" runat="server" Text="Phone2" />
                <uc:BindableTextBox ID="btxtPhone2" runat="server" Path="Phone2" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblSecurityQuestion" runat="server" Text="SecurityQuestion" />
                <uc:BindableTextBox ID="btxtSecurityQuestion" runat="server" Path="SecurityQuestion" Width="150px" PropertyName="Text" />
                <asp:Label ID="lblSecurityAnswer" runat="server" Text="SecurityAnswer" />
                <uc:BindableTextBox ID="btxtSecurityAnswer" runat="server" Path="SecurityAnswer" Width="150px" PropertyName="Text" />
                <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Submit" />
            </div>
        </form>
    </div>
</body>
</html>
