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
        <asp:Label ID="First_Name" runat="server" text="First Name"/>
         <asp:Label ID="FirstName" runat="server" text="First Name"/>
         <uc:BindableTextBox ID="btxtFirstName" runat="server" Path="FirstName" Width="150px" PropertyName="Text" />
        <asp:Label ID="LastName" runat="server" text="Last Name"/>
         <uc:BindableTextBox ID="btxtLastName" runat="server" Path="LastName" Width="150px" PropertyName="Text" />
        <asp:Label ID="Email" runat="server" text="Email"/>
         <uc:BindableTextBox ID="btxtEmail" runat="server" Path="Email" Width="150px" PropertyName="Text" />
        <asp:Label ID="UserName" runat="server" text="User Name"/>
         <uc:BindableTextBox ID="btxtUsername" runat="server" Path="Username" Width="150px" PropertyName="Text" />
        <asp:Label ID="Password" runat="server" text="Password"/>
         <uc:BindableTextBox ID="btxtPassword" runat="server" Path="Password" Width="150px" PropertyName="Text" TextMode="Password" />
        <asp:Label ID="ConfirmPassword" runat="server" text="Confirm Password"/>
         <uc:BindableTextBox ID="btxtPasswordConfirm" runat="server" Path="Password" Width="150px" PropertyName="Text" TextMode="Password" />
        <asp:Label ID="Street" runat="server" text="Street"/>
         <uc:BindableTextBox ID="btxtStreet" runat="server" Path="Street" Width="150px" PropertyName="Text" />
        <asp:Label ID="City" runat="server" text="City"/>
         <uc:BindableTextBox ID="btxtCity" runat="server" Path="City" Width="150px" PropertyName="Text" />
        <asp:Label ID="StateID" runat="server" text="State"/>
        <uc:BindableTextBox ID="State" runat="server" Path="State" Width="150px" PropertyName="Text" />
        <asp:Label ID="Zip" runat="server" text="Zip"/>
         <uc:BindableTextBox ID="btxtZip" runat="server" Path="Zip" Width="150px" PropertyName="Text" />
        <asp:Label ID="Phone1" runat="server" text="Phone1"/>
         <uc:BindableTextBox ID="btxtPhone1" runat="server" Path="Phone1" Width="150px" PropertyName="Text" />
        <asp:Label ID="Phone2" runat="server" text="Phone2"/>
         <uc:BindableTextBox ID="btxtPhone2" runat="server" Path="Phone2" Width="150px" PropertyName="Text" />
        <asp:Label ID="SecurityQuestion" runat="server" text="SecurityQuestion"/>
         <uc:BindableTextBox ID="btxtSecurityQuestion" runat="server" Path="SecurityQuestion" Width="150px" PropertyName="Text" />
        <asp:Label ID="SecurityAnswer" runat="server" text="SecurityAnswer"/>
         <uc:BindableTextBox ID="btxtSecurityAnswer" runat="server" Path="SecurityAnswer" Width="150px" PropertyName="Text" />
        <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Submit" />
    </div>
  
        
    </form>
              </div>
</body>
</html>
